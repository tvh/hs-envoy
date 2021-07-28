{- This file was auto-generated from envoy/service/ratelimit/v3/rls.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Service.Ratelimit.V3.Rls (
        RateLimitService(..), RateLimitRequest(), RateLimitResponse(),
        RateLimitResponse'Code(..), RateLimitResponse'Code(),
        RateLimitResponse'Code'UnrecognizedValue,
        RateLimitResponse'DescriptorStatus(), RateLimitResponse'Quota(),
        RateLimitResponse'Quota'ExpirationSpecifier(..),
        _RateLimitResponse'Quota'ValidUntil, RateLimitResponse'RateLimit(),
        RateLimitResponse'RateLimit'Unit(..),
        RateLimitResponse'RateLimit'Unit(),
        RateLimitResponse'RateLimit'Unit'UnrecognizedValue
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
import qualified Proto.Envoy.Extensions.Common.Ratelimit.V3.Ratelimit
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Struct
import qualified Proto.Google.Protobuf.Timestamp
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Service.Ratelimit.V3.Rls_Fields.domain' @:: Lens' RateLimitRequest Data.Text.Text@
         * 'Proto.Envoy.Service.Ratelimit.V3.Rls_Fields.descriptors' @:: Lens' RateLimitRequest [Proto.Envoy.Extensions.Common.Ratelimit.V3.Ratelimit.RateLimitDescriptor]@
         * 'Proto.Envoy.Service.Ratelimit.V3.Rls_Fields.vec'descriptors' @:: Lens' RateLimitRequest (Data.Vector.Vector Proto.Envoy.Extensions.Common.Ratelimit.V3.Ratelimit.RateLimitDescriptor)@
         * 'Proto.Envoy.Service.Ratelimit.V3.Rls_Fields.hitsAddend' @:: Lens' RateLimitRequest Data.Word.Word32@ -}
data RateLimitRequest
  = RateLimitRequest'_constructor {_RateLimitRequest'domain :: !Data.Text.Text,
                                   _RateLimitRequest'descriptors :: !(Data.Vector.Vector Proto.Envoy.Extensions.Common.Ratelimit.V3.Ratelimit.RateLimitDescriptor),
                                   _RateLimitRequest'hitsAddend :: !Data.Word.Word32,
                                   _RateLimitRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RateLimitRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RateLimitRequest "domain" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimitRequest'domain
           (\ x__ y__ -> x__ {_RateLimitRequest'domain = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RateLimitRequest "descriptors" [Proto.Envoy.Extensions.Common.Ratelimit.V3.Ratelimit.RateLimitDescriptor] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimitRequest'descriptors
           (\ x__ y__ -> x__ {_RateLimitRequest'descriptors = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField RateLimitRequest "vec'descriptors" (Data.Vector.Vector Proto.Envoy.Extensions.Common.Ratelimit.V3.Ratelimit.RateLimitDescriptor) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimitRequest'descriptors
           (\ x__ y__ -> x__ {_RateLimitRequest'descriptors = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RateLimitRequest "hitsAddend" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimitRequest'hitsAddend
           (\ x__ y__ -> x__ {_RateLimitRequest'hitsAddend = y__}))
        Prelude.id
instance Data.ProtoLens.Message RateLimitRequest where
  messageName _
    = Data.Text.pack "envoy.service.ratelimit.v3.RateLimitRequest"
  packedMessageDescriptor _
    = "\n\
      \\DLERateLimitRequest\DC2\SYN\n\
      \\ACKdomain\CAN\SOH \SOH(\tR\ACKdomain\DC2[\n\
      \\vdescriptors\CAN\STX \ETX(\v29.envoy.extensions.common.ratelimit.v3.RateLimitDescriptorR\vdescriptors\DC2\US\n\
      \\vhits_addend\CAN\ETX \SOH(\rR\n\
      \hitsAddend:2\154\197\136\RS-\n\
      \+envoy.service.ratelimit.v2.RateLimitRequest"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        domain__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "domain"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"domain")) ::
              Data.ProtoLens.FieldDescriptor RateLimitRequest
        descriptors__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "descriptors"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Extensions.Common.Ratelimit.V3.Ratelimit.RateLimitDescriptor)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"descriptors")) ::
              Data.ProtoLens.FieldDescriptor RateLimitRequest
        hitsAddend__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "hits_addend"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"hitsAddend")) ::
              Data.ProtoLens.FieldDescriptor RateLimitRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, domain__field_descriptor),
           (Data.ProtoLens.Tag 2, descriptors__field_descriptor),
           (Data.ProtoLens.Tag 3, hitsAddend__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RateLimitRequest'_unknownFields
        (\ x__ y__ -> x__ {_RateLimitRequest'_unknownFields = y__})
  defMessage
    = RateLimitRequest'_constructor
        {_RateLimitRequest'domain = Data.ProtoLens.fieldDefault,
         _RateLimitRequest'descriptors = Data.Vector.Generic.empty,
         _RateLimitRequest'hitsAddend = Data.ProtoLens.fieldDefault,
         _RateLimitRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RateLimitRequest
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Extensions.Common.Ratelimit.V3.Ratelimit.RateLimitDescriptor
             -> Data.ProtoLens.Encoding.Bytes.Parser RateLimitRequest
        loop x mutable'descriptors
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'descriptors <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                 mutable'descriptors)
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
                              (Data.ProtoLens.Field.field @"vec'descriptors")
                              frozen'descriptors
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
                                       "domain"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"domain") y x)
                                  mutable'descriptors
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "descriptors"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'descriptors y)
                                loop x v
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "hits_addend"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"hitsAddend") y x)
                                  mutable'descriptors
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'descriptors
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'descriptors <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'descriptors)
          "RateLimitRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"domain") _x
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
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
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
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'descriptors") _x))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"hitsAddend") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData RateLimitRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RateLimitRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RateLimitRequest'domain x__)
                (Control.DeepSeq.deepseq
                   (_RateLimitRequest'descriptors x__)
                   (Control.DeepSeq.deepseq (_RateLimitRequest'hitsAddend x__) ())))
{- | Fields :
     
         * 'Proto.Envoy.Service.Ratelimit.V3.Rls_Fields.overallCode' @:: Lens' RateLimitResponse RateLimitResponse'Code@
         * 'Proto.Envoy.Service.Ratelimit.V3.Rls_Fields.statuses' @:: Lens' RateLimitResponse [RateLimitResponse'DescriptorStatus]@
         * 'Proto.Envoy.Service.Ratelimit.V3.Rls_Fields.vec'statuses' @:: Lens' RateLimitResponse (Data.Vector.Vector RateLimitResponse'DescriptorStatus)@
         * 'Proto.Envoy.Service.Ratelimit.V3.Rls_Fields.responseHeadersToAdd' @:: Lens' RateLimitResponse [Proto.Envoy.Config.Core.V3.Base.HeaderValue]@
         * 'Proto.Envoy.Service.Ratelimit.V3.Rls_Fields.vec'responseHeadersToAdd' @:: Lens' RateLimitResponse (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Base.HeaderValue)@
         * 'Proto.Envoy.Service.Ratelimit.V3.Rls_Fields.requestHeadersToAdd' @:: Lens' RateLimitResponse [Proto.Envoy.Config.Core.V3.Base.HeaderValue]@
         * 'Proto.Envoy.Service.Ratelimit.V3.Rls_Fields.vec'requestHeadersToAdd' @:: Lens' RateLimitResponse (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Base.HeaderValue)@
         * 'Proto.Envoy.Service.Ratelimit.V3.Rls_Fields.rawBody' @:: Lens' RateLimitResponse Data.ByteString.ByteString@
         * 'Proto.Envoy.Service.Ratelimit.V3.Rls_Fields.dynamicMetadata' @:: Lens' RateLimitResponse Proto.Google.Protobuf.Struct.Struct@
         * 'Proto.Envoy.Service.Ratelimit.V3.Rls_Fields.maybe'dynamicMetadata' @:: Lens' RateLimitResponse (Prelude.Maybe Proto.Google.Protobuf.Struct.Struct)@ -}
data RateLimitResponse
  = RateLimitResponse'_constructor {_RateLimitResponse'overallCode :: !RateLimitResponse'Code,
                                    _RateLimitResponse'statuses :: !(Data.Vector.Vector RateLimitResponse'DescriptorStatus),
                                    _RateLimitResponse'responseHeadersToAdd :: !(Data.Vector.Vector Proto.Envoy.Config.Core.V3.Base.HeaderValue),
                                    _RateLimitResponse'requestHeadersToAdd :: !(Data.Vector.Vector Proto.Envoy.Config.Core.V3.Base.HeaderValue),
                                    _RateLimitResponse'rawBody :: !Data.ByteString.ByteString,
                                    _RateLimitResponse'dynamicMetadata :: !(Prelude.Maybe Proto.Google.Protobuf.Struct.Struct),
                                    _RateLimitResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RateLimitResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RateLimitResponse "overallCode" RateLimitResponse'Code where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimitResponse'overallCode
           (\ x__ y__ -> x__ {_RateLimitResponse'overallCode = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RateLimitResponse "statuses" [RateLimitResponse'DescriptorStatus] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimitResponse'statuses
           (\ x__ y__ -> x__ {_RateLimitResponse'statuses = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField RateLimitResponse "vec'statuses" (Data.Vector.Vector RateLimitResponse'DescriptorStatus) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimitResponse'statuses
           (\ x__ y__ -> x__ {_RateLimitResponse'statuses = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RateLimitResponse "responseHeadersToAdd" [Proto.Envoy.Config.Core.V3.Base.HeaderValue] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimitResponse'responseHeadersToAdd
           (\ x__ y__ -> x__ {_RateLimitResponse'responseHeadersToAdd = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField RateLimitResponse "vec'responseHeadersToAdd" (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Base.HeaderValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimitResponse'responseHeadersToAdd
           (\ x__ y__ -> x__ {_RateLimitResponse'responseHeadersToAdd = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RateLimitResponse "requestHeadersToAdd" [Proto.Envoy.Config.Core.V3.Base.HeaderValue] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimitResponse'requestHeadersToAdd
           (\ x__ y__ -> x__ {_RateLimitResponse'requestHeadersToAdd = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField RateLimitResponse "vec'requestHeadersToAdd" (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Base.HeaderValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimitResponse'requestHeadersToAdd
           (\ x__ y__ -> x__ {_RateLimitResponse'requestHeadersToAdd = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RateLimitResponse "rawBody" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimitResponse'rawBody
           (\ x__ y__ -> x__ {_RateLimitResponse'rawBody = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RateLimitResponse "dynamicMetadata" Proto.Google.Protobuf.Struct.Struct where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimitResponse'dynamicMetadata
           (\ x__ y__ -> x__ {_RateLimitResponse'dynamicMetadata = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RateLimitResponse "maybe'dynamicMetadata" (Prelude.Maybe Proto.Google.Protobuf.Struct.Struct) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimitResponse'dynamicMetadata
           (\ x__ y__ -> x__ {_RateLimitResponse'dynamicMetadata = y__}))
        Prelude.id
instance Data.ProtoLens.Message RateLimitResponse where
  messageName _
    = Data.Text.pack "envoy.service.ratelimit.v3.RateLimitResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC1RateLimitResponse\DC2U\n\
      \\foverall_code\CAN\SOH \SOH(\SO22.envoy.service.ratelimit.v3.RateLimitResponse.CodeR\voverallCode\DC2Z\n\
      \\bstatuses\CAN\STX \ETX(\v2>.envoy.service.ratelimit.v3.RateLimitResponse.DescriptorStatusR\bstatuses\DC2X\n\
      \\ETBresponse_headers_to_add\CAN\ETX \ETX(\v2!.envoy.config.core.v3.HeaderValueR\DC4responseHeadersToAdd\DC2V\n\
      \\SYNrequest_headers_to_add\CAN\EOT \ETX(\v2!.envoy.config.core.v3.HeaderValueR\DC3requestHeadersToAdd\DC2\EM\n\
      \\braw_body\CAN\ENQ \SOH(\fR\arawBody\DC2B\n\
      \\DLEdynamic_metadata\CAN\ACK \SOH(\v2\ETB.google.protobuf.StructR\SIdynamicMetadata\SUB\156\STX\n\
      \\tRateLimit\DC2\DC2\n\
      \\EOTname\CAN\ETX \SOH(\tR\EOTname\DC2*\n\
      \\DC1requests_per_unit\CAN\SOH \SOH(\rR\SIrequestsPerUnit\DC2P\n\
      \\EOTunit\CAN\STX \SOH(\SO2<.envoy.service.ratelimit.v3.RateLimitResponse.RateLimit.UnitR\EOTunit\">\n\
      \\EOTUnit\DC2\v\n\
      \\aUNKNOWN\DLE\NUL\DC2\n\
      \\n\
      \\ACKSECOND\DLE\SOH\DC2\n\
      \\n\
      \\ACKMINUTE\DLE\STX\DC2\b\n\
      \\EOTHOUR\DLE\ETX\DC2\a\n\
      \\ETXDAY\DLE\EOT:=\154\197\136\RS8\n\
      \6envoy.service.ratelimit.v2.RateLimitResponse.RateLimit\SUB\131\SOH\n\
      \\ENQQuota\DC2#\n\
      \\brequests\CAN\SOH \SOH(\rR\brequestsB\a\250B\EOT*\STX \NUL\DC2=\n\
      \\vvalid_until\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampH\NULR\n\
      \validUntilB\SYN\n\
      \\DC4expiration_specifier\SUB\191\ETX\n\
      \\DLEDescriptorStatus\DC2F\n\
      \\EOTcode\CAN\SOH \SOH(\SO22.envoy.service.ratelimit.v3.RateLimitResponse.CodeR\EOTcode\DC2\\\n\
      \\rcurrent_limit\CAN\STX \SOH(\v27.envoy.service.ratelimit.v3.RateLimitResponse.RateLimitR\fcurrentLimit\DC2'\n\
      \\SIlimit_remaining\CAN\ETX \SOH(\rR\SOlimitRemaining\DC2K\n\
      \\DC4duration_until_reset\CAN\EOT \SOH(\v2\EM.google.protobuf.DurationR\DC2durationUntilReset\DC2I\n\
      \\ENQquota\CAN\ENQ \SOH(\v23.envoy.service.ratelimit.v3.RateLimitResponse.QuotaR\ENQquota:D\154\197\136\RS?\n\
      \=envoy.service.ratelimit.v2.RateLimitResponse.DescriptorStatus\"+\n\
      \\EOTCode\DC2\v\n\
      \\aUNKNOWN\DLE\NUL\DC2\ACK\n\
      \\STXOK\DLE\SOH\DC2\SO\n\
      \\n\
      \OVER_LIMIT\DLE\STX:3\154\197\136\RS.\n\
      \,envoy.service.ratelimit.v2.RateLimitResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        overallCode__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "overall_code"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor RateLimitResponse'Code)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"overallCode")) ::
              Data.ProtoLens.FieldDescriptor RateLimitResponse
        statuses__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "statuses"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RateLimitResponse'DescriptorStatus)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"statuses")) ::
              Data.ProtoLens.FieldDescriptor RateLimitResponse
        responseHeadersToAdd__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "response_headers_to_add"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.HeaderValue)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"responseHeadersToAdd")) ::
              Data.ProtoLens.FieldDescriptor RateLimitResponse
        requestHeadersToAdd__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request_headers_to_add"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.HeaderValue)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"requestHeadersToAdd")) ::
              Data.ProtoLens.FieldDescriptor RateLimitResponse
        rawBody__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "raw_body"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"rawBody")) ::
              Data.ProtoLens.FieldDescriptor RateLimitResponse
        dynamicMetadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dynamic_metadata"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Struct.Struct)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dynamicMetadata")) ::
              Data.ProtoLens.FieldDescriptor RateLimitResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, overallCode__field_descriptor),
           (Data.ProtoLens.Tag 2, statuses__field_descriptor),
           (Data.ProtoLens.Tag 3, responseHeadersToAdd__field_descriptor),
           (Data.ProtoLens.Tag 4, requestHeadersToAdd__field_descriptor),
           (Data.ProtoLens.Tag 5, rawBody__field_descriptor),
           (Data.ProtoLens.Tag 6, dynamicMetadata__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RateLimitResponse'_unknownFields
        (\ x__ y__ -> x__ {_RateLimitResponse'_unknownFields = y__})
  defMessage
    = RateLimitResponse'_constructor
        {_RateLimitResponse'overallCode = Data.ProtoLens.fieldDefault,
         _RateLimitResponse'statuses = Data.Vector.Generic.empty,
         _RateLimitResponse'responseHeadersToAdd = Data.Vector.Generic.empty,
         _RateLimitResponse'requestHeadersToAdd = Data.Vector.Generic.empty,
         _RateLimitResponse'rawBody = Data.ProtoLens.fieldDefault,
         _RateLimitResponse'dynamicMetadata = Prelude.Nothing,
         _RateLimitResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RateLimitResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Core.V3.Base.HeaderValue
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Core.V3.Base.HeaderValue
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld RateLimitResponse'DescriptorStatus
                   -> Data.ProtoLens.Encoding.Bytes.Parser RateLimitResponse
        loop
          x
          mutable'requestHeadersToAdd
          mutable'responseHeadersToAdd
          mutable'statuses
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'requestHeadersToAdd <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                         mutable'requestHeadersToAdd)
                      frozen'responseHeadersToAdd <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                       (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                          mutable'responseHeadersToAdd)
                      frozen'statuses <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'statuses)
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
                              (Data.ProtoLens.Field.field @"vec'requestHeadersToAdd")
                              frozen'requestHeadersToAdd
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'responseHeadersToAdd")
                                 frozen'responseHeadersToAdd
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"vec'statuses")
                                    frozen'statuses
                                    x))))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "overall_code"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"overallCode") y x)
                                  mutable'requestHeadersToAdd
                                  mutable'responseHeadersToAdd
                                  mutable'statuses
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "statuses"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'statuses y)
                                loop x mutable'requestHeadersToAdd mutable'responseHeadersToAdd v
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "response_headers_to_add"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'responseHeadersToAdd y)
                                loop x mutable'requestHeadersToAdd v mutable'statuses
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "request_headers_to_add"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'requestHeadersToAdd y)
                                loop x v mutable'responseHeadersToAdd mutable'statuses
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "raw_body"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"rawBody") y x)
                                  mutable'requestHeadersToAdd
                                  mutable'responseHeadersToAdd
                                  mutable'statuses
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "dynamic_metadata"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"dynamicMetadata") y x)
                                  mutable'requestHeadersToAdd
                                  mutable'responseHeadersToAdd
                                  mutable'statuses
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'requestHeadersToAdd
                                  mutable'responseHeadersToAdd
                                  mutable'statuses
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'requestHeadersToAdd <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               Data.ProtoLens.Encoding.Growing.new
              mutable'responseHeadersToAdd <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                Data.ProtoLens.Encoding.Growing.new
              mutable'statuses <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage
                mutable'requestHeadersToAdd
                mutable'responseHeadersToAdd
                mutable'statuses)
          "RateLimitResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"overallCode") _x
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
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
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
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'statuses") _x))
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
                         (Data.ProtoLens.Field.field @"vec'responseHeadersToAdd") _x))
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
                         (Lens.Family2.view
                            (Data.ProtoLens.Field.field @"vec'requestHeadersToAdd") _x))
                      ((Data.Monoid.<>)
                         (let
                            _v = Lens.Family2.view (Data.ProtoLens.Field.field @"rawBody") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                  ((\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                     _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'dynamicMetadata") _x
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
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData RateLimitResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RateLimitResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RateLimitResponse'overallCode x__)
                (Control.DeepSeq.deepseq
                   (_RateLimitResponse'statuses x__)
                   (Control.DeepSeq.deepseq
                      (_RateLimitResponse'responseHeadersToAdd x__)
                      (Control.DeepSeq.deepseq
                         (_RateLimitResponse'requestHeadersToAdd x__)
                         (Control.DeepSeq.deepseq
                            (_RateLimitResponse'rawBody x__)
                            (Control.DeepSeq.deepseq
                               (_RateLimitResponse'dynamicMetadata x__) ()))))))
newtype RateLimitResponse'Code'UnrecognizedValue
  = RateLimitResponse'Code'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data RateLimitResponse'Code
  = RateLimitResponse'UNKNOWN |
    RateLimitResponse'OK |
    RateLimitResponse'OVER_LIMIT |
    RateLimitResponse'Code'Unrecognized !RateLimitResponse'Code'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum RateLimitResponse'Code where
  maybeToEnum 0 = Prelude.Just RateLimitResponse'UNKNOWN
  maybeToEnum 1 = Prelude.Just RateLimitResponse'OK
  maybeToEnum 2 = Prelude.Just RateLimitResponse'OVER_LIMIT
  maybeToEnum k
    = Prelude.Just
        (RateLimitResponse'Code'Unrecognized
           (RateLimitResponse'Code'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum RateLimitResponse'UNKNOWN = "UNKNOWN"
  showEnum RateLimitResponse'OK = "OK"
  showEnum RateLimitResponse'OVER_LIMIT = "OVER_LIMIT"
  showEnum
    (RateLimitResponse'Code'Unrecognized (RateLimitResponse'Code'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "UNKNOWN" = Prelude.Just RateLimitResponse'UNKNOWN
    | (Prelude.==) k "OK" = Prelude.Just RateLimitResponse'OK
    | (Prelude.==) k "OVER_LIMIT"
    = Prelude.Just RateLimitResponse'OVER_LIMIT
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded RateLimitResponse'Code where
  minBound = RateLimitResponse'UNKNOWN
  maxBound = RateLimitResponse'OVER_LIMIT
instance Prelude.Enum RateLimitResponse'Code where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum Code: " (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum RateLimitResponse'UNKNOWN = 0
  fromEnum RateLimitResponse'OK = 1
  fromEnum RateLimitResponse'OVER_LIMIT = 2
  fromEnum
    (RateLimitResponse'Code'Unrecognized (RateLimitResponse'Code'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ RateLimitResponse'OVER_LIMIT
    = Prelude.error
        "RateLimitResponse'Code.succ: bad argument RateLimitResponse'OVER_LIMIT. This value would be out of bounds."
  succ RateLimitResponse'UNKNOWN = RateLimitResponse'OK
  succ RateLimitResponse'OK = RateLimitResponse'OVER_LIMIT
  succ (RateLimitResponse'Code'Unrecognized _)
    = Prelude.error
        "RateLimitResponse'Code.succ: bad argument: unrecognized value"
  pred RateLimitResponse'UNKNOWN
    = Prelude.error
        "RateLimitResponse'Code.pred: bad argument RateLimitResponse'UNKNOWN. This value would be out of bounds."
  pred RateLimitResponse'OK = RateLimitResponse'UNKNOWN
  pred RateLimitResponse'OVER_LIMIT = RateLimitResponse'OK
  pred (RateLimitResponse'Code'Unrecognized _)
    = Prelude.error
        "RateLimitResponse'Code.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault RateLimitResponse'Code where
  fieldDefault = RateLimitResponse'UNKNOWN
instance Control.DeepSeq.NFData RateLimitResponse'Code where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Envoy.Service.Ratelimit.V3.Rls_Fields.code' @:: Lens' RateLimitResponse'DescriptorStatus RateLimitResponse'Code@
         * 'Proto.Envoy.Service.Ratelimit.V3.Rls_Fields.currentLimit' @:: Lens' RateLimitResponse'DescriptorStatus RateLimitResponse'RateLimit@
         * 'Proto.Envoy.Service.Ratelimit.V3.Rls_Fields.maybe'currentLimit' @:: Lens' RateLimitResponse'DescriptorStatus (Prelude.Maybe RateLimitResponse'RateLimit)@
         * 'Proto.Envoy.Service.Ratelimit.V3.Rls_Fields.limitRemaining' @:: Lens' RateLimitResponse'DescriptorStatus Data.Word.Word32@
         * 'Proto.Envoy.Service.Ratelimit.V3.Rls_Fields.durationUntilReset' @:: Lens' RateLimitResponse'DescriptorStatus Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Service.Ratelimit.V3.Rls_Fields.maybe'durationUntilReset' @:: Lens' RateLimitResponse'DescriptorStatus (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Service.Ratelimit.V3.Rls_Fields.quota' @:: Lens' RateLimitResponse'DescriptorStatus RateLimitResponse'Quota@
         * 'Proto.Envoy.Service.Ratelimit.V3.Rls_Fields.maybe'quota' @:: Lens' RateLimitResponse'DescriptorStatus (Prelude.Maybe RateLimitResponse'Quota)@ -}
data RateLimitResponse'DescriptorStatus
  = RateLimitResponse'DescriptorStatus'_constructor {_RateLimitResponse'DescriptorStatus'code :: !RateLimitResponse'Code,
                                                     _RateLimitResponse'DescriptorStatus'currentLimit :: !(Prelude.Maybe RateLimitResponse'RateLimit),
                                                     _RateLimitResponse'DescriptorStatus'limitRemaining :: !Data.Word.Word32,
                                                     _RateLimitResponse'DescriptorStatus'durationUntilReset :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                                     _RateLimitResponse'DescriptorStatus'quota :: !(Prelude.Maybe RateLimitResponse'Quota),
                                                     _RateLimitResponse'DescriptorStatus'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RateLimitResponse'DescriptorStatus where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RateLimitResponse'DescriptorStatus "code" RateLimitResponse'Code where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimitResponse'DescriptorStatus'code
           (\ x__ y__
              -> x__ {_RateLimitResponse'DescriptorStatus'code = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RateLimitResponse'DescriptorStatus "currentLimit" RateLimitResponse'RateLimit where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimitResponse'DescriptorStatus'currentLimit
           (\ x__ y__
              -> x__ {_RateLimitResponse'DescriptorStatus'currentLimit = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RateLimitResponse'DescriptorStatus "maybe'currentLimit" (Prelude.Maybe RateLimitResponse'RateLimit) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimitResponse'DescriptorStatus'currentLimit
           (\ x__ y__
              -> x__ {_RateLimitResponse'DescriptorStatus'currentLimit = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RateLimitResponse'DescriptorStatus "limitRemaining" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimitResponse'DescriptorStatus'limitRemaining
           (\ x__ y__
              -> x__ {_RateLimitResponse'DescriptorStatus'limitRemaining = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RateLimitResponse'DescriptorStatus "durationUntilReset" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimitResponse'DescriptorStatus'durationUntilReset
           (\ x__ y__
              -> x__
                   {_RateLimitResponse'DescriptorStatus'durationUntilReset = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RateLimitResponse'DescriptorStatus "maybe'durationUntilReset" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimitResponse'DescriptorStatus'durationUntilReset
           (\ x__ y__
              -> x__
                   {_RateLimitResponse'DescriptorStatus'durationUntilReset = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RateLimitResponse'DescriptorStatus "quota" RateLimitResponse'Quota where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimitResponse'DescriptorStatus'quota
           (\ x__ y__
              -> x__ {_RateLimitResponse'DescriptorStatus'quota = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RateLimitResponse'DescriptorStatus "maybe'quota" (Prelude.Maybe RateLimitResponse'Quota) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimitResponse'DescriptorStatus'quota
           (\ x__ y__
              -> x__ {_RateLimitResponse'DescriptorStatus'quota = y__}))
        Prelude.id
instance Data.ProtoLens.Message RateLimitResponse'DescriptorStatus where
  messageName _
    = Data.Text.pack
        "envoy.service.ratelimit.v3.RateLimitResponse.DescriptorStatus"
  packedMessageDescriptor _
    = "\n\
      \\DLEDescriptorStatus\DC2F\n\
      \\EOTcode\CAN\SOH \SOH(\SO22.envoy.service.ratelimit.v3.RateLimitResponse.CodeR\EOTcode\DC2\\\n\
      \\rcurrent_limit\CAN\STX \SOH(\v27.envoy.service.ratelimit.v3.RateLimitResponse.RateLimitR\fcurrentLimit\DC2'\n\
      \\SIlimit_remaining\CAN\ETX \SOH(\rR\SOlimitRemaining\DC2K\n\
      \\DC4duration_until_reset\CAN\EOT \SOH(\v2\EM.google.protobuf.DurationR\DC2durationUntilReset\DC2I\n\
      \\ENQquota\CAN\ENQ \SOH(\v23.envoy.service.ratelimit.v3.RateLimitResponse.QuotaR\ENQquota:D\154\197\136\RS?\n\
      \=envoy.service.ratelimit.v2.RateLimitResponse.DescriptorStatus"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        code__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "code"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor RateLimitResponse'Code)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"code")) ::
              Data.ProtoLens.FieldDescriptor RateLimitResponse'DescriptorStatus
        currentLimit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "current_limit"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RateLimitResponse'RateLimit)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'currentLimit")) ::
              Data.ProtoLens.FieldDescriptor RateLimitResponse'DescriptorStatus
        limitRemaining__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "limit_remaining"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"limitRemaining")) ::
              Data.ProtoLens.FieldDescriptor RateLimitResponse'DescriptorStatus
        durationUntilReset__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "duration_until_reset"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'durationUntilReset")) ::
              Data.ProtoLens.FieldDescriptor RateLimitResponse'DescriptorStatus
        quota__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "quota"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RateLimitResponse'Quota)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'quota")) ::
              Data.ProtoLens.FieldDescriptor RateLimitResponse'DescriptorStatus
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, code__field_descriptor),
           (Data.ProtoLens.Tag 2, currentLimit__field_descriptor),
           (Data.ProtoLens.Tag 3, limitRemaining__field_descriptor),
           (Data.ProtoLens.Tag 4, durationUntilReset__field_descriptor),
           (Data.ProtoLens.Tag 5, quota__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RateLimitResponse'DescriptorStatus'_unknownFields
        (\ x__ y__
           -> x__ {_RateLimitResponse'DescriptorStatus'_unknownFields = y__})
  defMessage
    = RateLimitResponse'DescriptorStatus'_constructor
        {_RateLimitResponse'DescriptorStatus'code = Data.ProtoLens.fieldDefault,
         _RateLimitResponse'DescriptorStatus'currentLimit = Prelude.Nothing,
         _RateLimitResponse'DescriptorStatus'limitRemaining = Data.ProtoLens.fieldDefault,
         _RateLimitResponse'DescriptorStatus'durationUntilReset = Prelude.Nothing,
         _RateLimitResponse'DescriptorStatus'quota = Prelude.Nothing,
         _RateLimitResponse'DescriptorStatus'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RateLimitResponse'DescriptorStatus
          -> Data.ProtoLens.Encoding.Bytes.Parser RateLimitResponse'DescriptorStatus
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
                                       "code"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"code") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "current_limit"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"currentLimit") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "limit_remaining"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"limitRemaining") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "duration_until_reset"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"durationUntilReset") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "quota"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"quota") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DescriptorStatus"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"code") _x
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
                       (Data.ProtoLens.Field.field @"maybe'currentLimit") _x
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
                            (Data.ProtoLens.Field.field @"limitRemaining") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'durationUntilReset") _x
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
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'quota") _x
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
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData RateLimitResponse'DescriptorStatus where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RateLimitResponse'DescriptorStatus'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RateLimitResponse'DescriptorStatus'code x__)
                (Control.DeepSeq.deepseq
                   (_RateLimitResponse'DescriptorStatus'currentLimit x__)
                   (Control.DeepSeq.deepseq
                      (_RateLimitResponse'DescriptorStatus'limitRemaining x__)
                      (Control.DeepSeq.deepseq
                         (_RateLimitResponse'DescriptorStatus'durationUntilReset x__)
                         (Control.DeepSeq.deepseq
                            (_RateLimitResponse'DescriptorStatus'quota x__) ())))))
{- | Fields :
     
         * 'Proto.Envoy.Service.Ratelimit.V3.Rls_Fields.requests' @:: Lens' RateLimitResponse'Quota Data.Word.Word32@
         * 'Proto.Envoy.Service.Ratelimit.V3.Rls_Fields.maybe'expirationSpecifier' @:: Lens' RateLimitResponse'Quota (Prelude.Maybe RateLimitResponse'Quota'ExpirationSpecifier)@
         * 'Proto.Envoy.Service.Ratelimit.V3.Rls_Fields.maybe'validUntil' @:: Lens' RateLimitResponse'Quota (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Envoy.Service.Ratelimit.V3.Rls_Fields.validUntil' @:: Lens' RateLimitResponse'Quota Proto.Google.Protobuf.Timestamp.Timestamp@ -}
data RateLimitResponse'Quota
  = RateLimitResponse'Quota'_constructor {_RateLimitResponse'Quota'requests :: !Data.Word.Word32,
                                          _RateLimitResponse'Quota'expirationSpecifier :: !(Prelude.Maybe RateLimitResponse'Quota'ExpirationSpecifier),
                                          _RateLimitResponse'Quota'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RateLimitResponse'Quota where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data RateLimitResponse'Quota'ExpirationSpecifier
  = RateLimitResponse'Quota'ValidUntil !Proto.Google.Protobuf.Timestamp.Timestamp
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField RateLimitResponse'Quota "requests" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimitResponse'Quota'requests
           (\ x__ y__ -> x__ {_RateLimitResponse'Quota'requests = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RateLimitResponse'Quota "maybe'expirationSpecifier" (Prelude.Maybe RateLimitResponse'Quota'ExpirationSpecifier) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimitResponse'Quota'expirationSpecifier
           (\ x__ y__
              -> x__ {_RateLimitResponse'Quota'expirationSpecifier = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RateLimitResponse'Quota "maybe'validUntil" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimitResponse'Quota'expirationSpecifier
           (\ x__ y__
              -> x__ {_RateLimitResponse'Quota'expirationSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (RateLimitResponse'Quota'ValidUntil x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap RateLimitResponse'Quota'ValidUntil y__))
instance Data.ProtoLens.Field.HasField RateLimitResponse'Quota "validUntil" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimitResponse'Quota'expirationSpecifier
           (\ x__ y__
              -> x__ {_RateLimitResponse'Quota'expirationSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (RateLimitResponse'Quota'ValidUntil x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap RateLimitResponse'Quota'ValidUntil y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message RateLimitResponse'Quota where
  messageName _
    = Data.Text.pack
        "envoy.service.ratelimit.v3.RateLimitResponse.Quota"
  packedMessageDescriptor _
    = "\n\
      \\ENQQuota\DC2#\n\
      \\brequests\CAN\SOH \SOH(\rR\brequestsB\a\250B\EOT*\STX \NUL\DC2=\n\
      \\vvalid_until\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampH\NULR\n\
      \validUntilB\SYN\n\
      \\DC4expiration_specifier"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        requests__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "requests"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"requests")) ::
              Data.ProtoLens.FieldDescriptor RateLimitResponse'Quota
        validUntil__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "valid_until"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'validUntil")) ::
              Data.ProtoLens.FieldDescriptor RateLimitResponse'Quota
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, requests__field_descriptor),
           (Data.ProtoLens.Tag 2, validUntil__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RateLimitResponse'Quota'_unknownFields
        (\ x__ y__ -> x__ {_RateLimitResponse'Quota'_unknownFields = y__})
  defMessage
    = RateLimitResponse'Quota'_constructor
        {_RateLimitResponse'Quota'requests = Data.ProtoLens.fieldDefault,
         _RateLimitResponse'Quota'expirationSpecifier = Prelude.Nothing,
         _RateLimitResponse'Quota'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RateLimitResponse'Quota
          -> Data.ProtoLens.Encoding.Bytes.Parser RateLimitResponse'Quota
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
                                       "requests"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"requests") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "valid_until"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"validUntil") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Quota"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"requests") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'expirationSpecifier") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just (RateLimitResponse'Quota'ValidUntil v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
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
instance Control.DeepSeq.NFData RateLimitResponse'Quota where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RateLimitResponse'Quota'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RateLimitResponse'Quota'requests x__)
                (Control.DeepSeq.deepseq
                   (_RateLimitResponse'Quota'expirationSpecifier x__) ()))
instance Control.DeepSeq.NFData RateLimitResponse'Quota'ExpirationSpecifier where
  rnf (RateLimitResponse'Quota'ValidUntil x__)
    = Control.DeepSeq.rnf x__
_RateLimitResponse'Quota'ValidUntil ::
  Data.ProtoLens.Prism.Prism' RateLimitResponse'Quota'ExpirationSpecifier Proto.Google.Protobuf.Timestamp.Timestamp
_RateLimitResponse'Quota'ValidUntil
  = Data.ProtoLens.Prism.prism'
      RateLimitResponse'Quota'ValidUntil
      (\ p__
         -> case p__ of {
              (RateLimitResponse'Quota'ValidUntil p__val)
                -> Prelude.Just p__val })
{- | Fields :
     
         * 'Proto.Envoy.Service.Ratelimit.V3.Rls_Fields.name' @:: Lens' RateLimitResponse'RateLimit Data.Text.Text@
         * 'Proto.Envoy.Service.Ratelimit.V3.Rls_Fields.requestsPerUnit' @:: Lens' RateLimitResponse'RateLimit Data.Word.Word32@
         * 'Proto.Envoy.Service.Ratelimit.V3.Rls_Fields.unit' @:: Lens' RateLimitResponse'RateLimit RateLimitResponse'RateLimit'Unit@ -}
data RateLimitResponse'RateLimit
  = RateLimitResponse'RateLimit'_constructor {_RateLimitResponse'RateLimit'name :: !Data.Text.Text,
                                              _RateLimitResponse'RateLimit'requestsPerUnit :: !Data.Word.Word32,
                                              _RateLimitResponse'RateLimit'unit :: !RateLimitResponse'RateLimit'Unit,
                                              _RateLimitResponse'RateLimit'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RateLimitResponse'RateLimit where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RateLimitResponse'RateLimit "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimitResponse'RateLimit'name
           (\ x__ y__ -> x__ {_RateLimitResponse'RateLimit'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RateLimitResponse'RateLimit "requestsPerUnit" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimitResponse'RateLimit'requestsPerUnit
           (\ x__ y__
              -> x__ {_RateLimitResponse'RateLimit'requestsPerUnit = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RateLimitResponse'RateLimit "unit" RateLimitResponse'RateLimit'Unit where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimitResponse'RateLimit'unit
           (\ x__ y__ -> x__ {_RateLimitResponse'RateLimit'unit = y__}))
        Prelude.id
instance Data.ProtoLens.Message RateLimitResponse'RateLimit where
  messageName _
    = Data.Text.pack
        "envoy.service.ratelimit.v3.RateLimitResponse.RateLimit"
  packedMessageDescriptor _
    = "\n\
      \\tRateLimit\DC2\DC2\n\
      \\EOTname\CAN\ETX \SOH(\tR\EOTname\DC2*\n\
      \\DC1requests_per_unit\CAN\SOH \SOH(\rR\SIrequestsPerUnit\DC2P\n\
      \\EOTunit\CAN\STX \SOH(\SO2<.envoy.service.ratelimit.v3.RateLimitResponse.RateLimit.UnitR\EOTunit\">\n\
      \\EOTUnit\DC2\v\n\
      \\aUNKNOWN\DLE\NUL\DC2\n\
      \\n\
      \\ACKSECOND\DLE\SOH\DC2\n\
      \\n\
      \\ACKMINUTE\DLE\STX\DC2\b\n\
      \\EOTHOUR\DLE\ETX\DC2\a\n\
      \\ETXDAY\DLE\EOT:=\154\197\136\RS8\n\
      \6envoy.service.ratelimit.v2.RateLimitResponse.RateLimit"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"name")) ::
              Data.ProtoLens.FieldDescriptor RateLimitResponse'RateLimit
        requestsPerUnit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "requests_per_unit"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"requestsPerUnit")) ::
              Data.ProtoLens.FieldDescriptor RateLimitResponse'RateLimit
        unit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "unit"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor RateLimitResponse'RateLimit'Unit)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"unit")) ::
              Data.ProtoLens.FieldDescriptor RateLimitResponse'RateLimit
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 3, name__field_descriptor),
           (Data.ProtoLens.Tag 1, requestsPerUnit__field_descriptor),
           (Data.ProtoLens.Tag 2, unit__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RateLimitResponse'RateLimit'_unknownFields
        (\ x__ y__
           -> x__ {_RateLimitResponse'RateLimit'_unknownFields = y__})
  defMessage
    = RateLimitResponse'RateLimit'_constructor
        {_RateLimitResponse'RateLimit'name = Data.ProtoLens.fieldDefault,
         _RateLimitResponse'RateLimit'requestsPerUnit = Data.ProtoLens.fieldDefault,
         _RateLimitResponse'RateLimit'unit = Data.ProtoLens.fieldDefault,
         _RateLimitResponse'RateLimit'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RateLimitResponse'RateLimit
          -> Data.ProtoLens.Encoding.Bytes.Parser RateLimitResponse'RateLimit
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
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "requests_per_unit"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"requestsPerUnit") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "unit"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"unit") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RateLimit"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"name") _x
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
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"requestsPerUnit") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"unit") _x
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
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData RateLimitResponse'RateLimit where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RateLimitResponse'RateLimit'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RateLimitResponse'RateLimit'name x__)
                (Control.DeepSeq.deepseq
                   (_RateLimitResponse'RateLimit'requestsPerUnit x__)
                   (Control.DeepSeq.deepseq
                      (_RateLimitResponse'RateLimit'unit x__) ())))
newtype RateLimitResponse'RateLimit'Unit'UnrecognizedValue
  = RateLimitResponse'RateLimit'Unit'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data RateLimitResponse'RateLimit'Unit
  = RateLimitResponse'RateLimit'UNKNOWN |
    RateLimitResponse'RateLimit'SECOND |
    RateLimitResponse'RateLimit'MINUTE |
    RateLimitResponse'RateLimit'HOUR |
    RateLimitResponse'RateLimit'DAY |
    RateLimitResponse'RateLimit'Unit'Unrecognized !RateLimitResponse'RateLimit'Unit'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum RateLimitResponse'RateLimit'Unit where
  maybeToEnum 0 = Prelude.Just RateLimitResponse'RateLimit'UNKNOWN
  maybeToEnum 1 = Prelude.Just RateLimitResponse'RateLimit'SECOND
  maybeToEnum 2 = Prelude.Just RateLimitResponse'RateLimit'MINUTE
  maybeToEnum 3 = Prelude.Just RateLimitResponse'RateLimit'HOUR
  maybeToEnum 4 = Prelude.Just RateLimitResponse'RateLimit'DAY
  maybeToEnum k
    = Prelude.Just
        (RateLimitResponse'RateLimit'Unit'Unrecognized
           (RateLimitResponse'RateLimit'Unit'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum RateLimitResponse'RateLimit'UNKNOWN = "UNKNOWN"
  showEnum RateLimitResponse'RateLimit'SECOND = "SECOND"
  showEnum RateLimitResponse'RateLimit'MINUTE = "MINUTE"
  showEnum RateLimitResponse'RateLimit'HOUR = "HOUR"
  showEnum RateLimitResponse'RateLimit'DAY = "DAY"
  showEnum
    (RateLimitResponse'RateLimit'Unit'Unrecognized (RateLimitResponse'RateLimit'Unit'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "UNKNOWN"
    = Prelude.Just RateLimitResponse'RateLimit'UNKNOWN
    | (Prelude.==) k "SECOND"
    = Prelude.Just RateLimitResponse'RateLimit'SECOND
    | (Prelude.==) k "MINUTE"
    = Prelude.Just RateLimitResponse'RateLimit'MINUTE
    | (Prelude.==) k "HOUR"
    = Prelude.Just RateLimitResponse'RateLimit'HOUR
    | (Prelude.==) k "DAY"
    = Prelude.Just RateLimitResponse'RateLimit'DAY
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded RateLimitResponse'RateLimit'Unit where
  minBound = RateLimitResponse'RateLimit'UNKNOWN
  maxBound = RateLimitResponse'RateLimit'DAY
instance Prelude.Enum RateLimitResponse'RateLimit'Unit where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum Unit: " (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum RateLimitResponse'RateLimit'UNKNOWN = 0
  fromEnum RateLimitResponse'RateLimit'SECOND = 1
  fromEnum RateLimitResponse'RateLimit'MINUTE = 2
  fromEnum RateLimitResponse'RateLimit'HOUR = 3
  fromEnum RateLimitResponse'RateLimit'DAY = 4
  fromEnum
    (RateLimitResponse'RateLimit'Unit'Unrecognized (RateLimitResponse'RateLimit'Unit'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ RateLimitResponse'RateLimit'DAY
    = Prelude.error
        "RateLimitResponse'RateLimit'Unit.succ: bad argument RateLimitResponse'RateLimit'DAY. This value would be out of bounds."
  succ RateLimitResponse'RateLimit'UNKNOWN
    = RateLimitResponse'RateLimit'SECOND
  succ RateLimitResponse'RateLimit'SECOND
    = RateLimitResponse'RateLimit'MINUTE
  succ RateLimitResponse'RateLimit'MINUTE
    = RateLimitResponse'RateLimit'HOUR
  succ RateLimitResponse'RateLimit'HOUR
    = RateLimitResponse'RateLimit'DAY
  succ (RateLimitResponse'RateLimit'Unit'Unrecognized _)
    = Prelude.error
        "RateLimitResponse'RateLimit'Unit.succ: bad argument: unrecognized value"
  pred RateLimitResponse'RateLimit'UNKNOWN
    = Prelude.error
        "RateLimitResponse'RateLimit'Unit.pred: bad argument RateLimitResponse'RateLimit'UNKNOWN. This value would be out of bounds."
  pred RateLimitResponse'RateLimit'SECOND
    = RateLimitResponse'RateLimit'UNKNOWN
  pred RateLimitResponse'RateLimit'MINUTE
    = RateLimitResponse'RateLimit'SECOND
  pred RateLimitResponse'RateLimit'HOUR
    = RateLimitResponse'RateLimit'MINUTE
  pred RateLimitResponse'RateLimit'DAY
    = RateLimitResponse'RateLimit'HOUR
  pred (RateLimitResponse'RateLimit'Unit'Unrecognized _)
    = Prelude.error
        "RateLimitResponse'RateLimit'Unit.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault RateLimitResponse'RateLimit'Unit where
  fieldDefault = RateLimitResponse'RateLimit'UNKNOWN
instance Control.DeepSeq.NFData RateLimitResponse'RateLimit'Unit where
  rnf x__ = Prelude.seq x__ ()
data RateLimitService = RateLimitService {}
instance Data.ProtoLens.Service.Types.Service RateLimitService where
  type ServiceName RateLimitService = "RateLimitService"
  type ServicePackage RateLimitService = "envoy.service.ratelimit.v3"
  type ServiceMethods RateLimitService = '["shouldRateLimit"]
instance Data.ProtoLens.Service.Types.HasMethodImpl RateLimitService "shouldRateLimit" where
  type MethodName RateLimitService "shouldRateLimit" = "ShouldRateLimit"
  type MethodInput RateLimitService "shouldRateLimit" = RateLimitRequest
  type MethodOutput RateLimitService "shouldRateLimit" = RateLimitResponse
  type MethodStreamingType RateLimitService "shouldRateLimit" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \$envoy/service/ratelimit/v3/rls.proto\DC2\SUBenvoy.service.ratelimit.v3\SUB\USenvoy/config/core/v3/base.proto\SUB4envoy/extensions/common/ratelimit/v3/ratelimit.proto\SUB\RSgoogle/protobuf/duration.proto\SUB\FSgoogle/protobuf/struct.proto\SUB\USgoogle/protobuf/timestamp.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\220\SOH\n\
    \\DLERateLimitRequest\DC2\SYN\n\
    \\ACKdomain\CAN\SOH \SOH(\tR\ACKdomain\DC2[\n\
    \\vdescriptors\CAN\STX \ETX(\v29.envoy.extensions.common.ratelimit.v3.RateLimitDescriptorR\vdescriptors\DC2\US\n\
    \\vhits_addend\CAN\ETX \SOH(\rR\n\
    \hitsAddend:2\154\197\136\RS-\n\
    \+envoy.service.ratelimit.v2.RateLimitRequest\"\160\v\n\
    \\DC1RateLimitResponse\DC2U\n\
    \\foverall_code\CAN\SOH \SOH(\SO22.envoy.service.ratelimit.v3.RateLimitResponse.CodeR\voverallCode\DC2Z\n\
    \\bstatuses\CAN\STX \ETX(\v2>.envoy.service.ratelimit.v3.RateLimitResponse.DescriptorStatusR\bstatuses\DC2X\n\
    \\ETBresponse_headers_to_add\CAN\ETX \ETX(\v2!.envoy.config.core.v3.HeaderValueR\DC4responseHeadersToAdd\DC2V\n\
    \\SYNrequest_headers_to_add\CAN\EOT \ETX(\v2!.envoy.config.core.v3.HeaderValueR\DC3requestHeadersToAdd\DC2\EM\n\
    \\braw_body\CAN\ENQ \SOH(\fR\arawBody\DC2B\n\
    \\DLEdynamic_metadata\CAN\ACK \SOH(\v2\ETB.google.protobuf.StructR\SIdynamicMetadata\SUB\156\STX\n\
    \\tRateLimit\DC2\DC2\n\
    \\EOTname\CAN\ETX \SOH(\tR\EOTname\DC2*\n\
    \\DC1requests_per_unit\CAN\SOH \SOH(\rR\SIrequestsPerUnit\DC2P\n\
    \\EOTunit\CAN\STX \SOH(\SO2<.envoy.service.ratelimit.v3.RateLimitResponse.RateLimit.UnitR\EOTunit\">\n\
    \\EOTUnit\DC2\v\n\
    \\aUNKNOWN\DLE\NUL\DC2\n\
    \\n\
    \\ACKSECOND\DLE\SOH\DC2\n\
    \\n\
    \\ACKMINUTE\DLE\STX\DC2\b\n\
    \\EOTHOUR\DLE\ETX\DC2\a\n\
    \\ETXDAY\DLE\EOT:=\154\197\136\RS8\n\
    \6envoy.service.ratelimit.v2.RateLimitResponse.RateLimit\SUB\131\SOH\n\
    \\ENQQuota\DC2#\n\
    \\brequests\CAN\SOH \SOH(\rR\brequestsB\a\250B\EOT*\STX \NUL\DC2=\n\
    \\vvalid_until\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampH\NULR\n\
    \validUntilB\SYN\n\
    \\DC4expiration_specifier\SUB\191\ETX\n\
    \\DLEDescriptorStatus\DC2F\n\
    \\EOTcode\CAN\SOH \SOH(\SO22.envoy.service.ratelimit.v3.RateLimitResponse.CodeR\EOTcode\DC2\\\n\
    \\rcurrent_limit\CAN\STX \SOH(\v27.envoy.service.ratelimit.v3.RateLimitResponse.RateLimitR\fcurrentLimit\DC2'\n\
    \\SIlimit_remaining\CAN\ETX \SOH(\rR\SOlimitRemaining\DC2K\n\
    \\DC4duration_until_reset\CAN\EOT \SOH(\v2\EM.google.protobuf.DurationR\DC2durationUntilReset\DC2I\n\
    \\ENQquota\CAN\ENQ \SOH(\v23.envoy.service.ratelimit.v3.RateLimitResponse.QuotaR\ENQquota:D\154\197\136\RS?\n\
    \=envoy.service.ratelimit.v2.RateLimitResponse.DescriptorStatus\"+\n\
    \\EOTCode\DC2\v\n\
    \\aUNKNOWN\DLE\NUL\DC2\ACK\n\
    \\STXOK\DLE\SOH\DC2\SO\n\
    \\n\
    \OVER_LIMIT\DLE\STX:3\154\197\136\RS.\n\
    \,envoy.service.ratelimit.v2.RateLimitResponse2\132\SOH\n\
    \\DLERateLimitService\DC2p\n\
    \\SIShouldRateLimit\DC2,.envoy.service.ratelimit.v3.RateLimitRequest\SUB-.envoy.service.ratelimit.v3.RateLimitResponse\"\NULBA\n\
    \(io.envoyproxy.envoy.service.ratelimit.v3B\bRlsProtoP\SOH\136\SOH\SOH\186\128\200\209\ACK\STX\DLE\STXJ\140>\n\
    \\a\DC2\ENQ\NUL\NUL\195\SOH\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL#\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL)\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL>\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL(\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL&\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\t\NUL)\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\v\NUL'\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\f\NUL+\n\
    \\t\n\
    \\STX\ETX\a\DC2\ETX\r\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NULA\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\SI\NULA\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DLE\NUL)\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\DLE\NUL)\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC1\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\DC1\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC2\NUL$\n\
    \\t\n\
    \\STX\b\DC1\DC2\ETX\DC2\NUL$\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC3\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\DC3\NULF\n\
    \9\n\
    \\STX\ACK\NUL\DC2\EOT\ETB\NUL\ESC\SOH2- [#protodoc-title: Rate Limit Service (RLS)]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\ETB\b\CAN\n\
    \B\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\EOT\EM\STX\SUB\ETX\SUB4 Determine whether rate limiting should take place.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\EM\ACK\NAK\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\EM\SYN&\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\EM1B\n\
    \\201\EOT\n\
    \\STX\EOT\NUL\DC2\EOT$\NUL4\SOH\SUB\188\EOT Main message for a rate limit request. The rate limit service is designed to be fully generic\n\
    \ in the sense that it can operate on arbitrary hierarchical key/value pairs. The loaded\n\
    \ configuration will parse the request and find the most specific limit to apply. In addition,\n\
    \ a RateLimitRequest can contain multiple \"descriptors\" to limit on. When multiple descriptors\n\
    \ are provided, the server will limit on *ALL* of them and return an OVER_LIMIT response if any\n\
    \ of them are over limit. This enables more complex application level rate limiting scenarios\n\
    \ if desired.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX$\b\CAN\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT%\STX&4\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT%\STX&4\n\
    \\156\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX*\STX\DC4\SUB\142\SOH All rate limit requests must specify a domain. This enables the configuration to be per\n\
    \ application without fear of overlap. E.g., \"envoy\".\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX*\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX*\t\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX*\DC2\DC3\n\
    \\238\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX/\STXT\SUB\224\SOH All rate limit requests must specify at least one RateLimitDescriptor. Each descriptor is\n\
    \ processed by the service (see below). If any of the descriptors are over limit, the entire\n\
    \ request is considered to be over limit.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX/\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX/\vC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX/DO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX/RS\n\
    \\199\SOH\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX3\STX\EM\SUB\185\SOH Rate limit requests can optionally specify the number of hits a request adds to the matched\n\
    \ limit. If the value is not set in the message, a request increases the matched limit by 1.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX3\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX3\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX3\ETB\CAN\n\
    \M\n\
    \\STX\EOT\SOH\DC2\ENQ8\NUL\195\SOH\SOH\SUB@ A response from a ShouldRateLimit call.\n\
    \ [#next-free-field: 7]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX8\b\EM\n\
    \\v\n\
    \\ETX\EOT\SOH\a\DC2\EOT9\STX:5\n\
    \\DLE\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\EOT9\STX:5\n\
    \\f\n\
    \\EOT\EOT\SOH\EOT\NUL\DC2\EOT<\STXE\ETX\n\
    \\f\n\
    \\ENQ\EOT\SOH\EOT\NUL\SOH\DC2\ETX<\a\v\n\
    \0\n\
    \\ACK\EOT\SOH\EOT\NUL\STX\NUL\DC2\ETX>\EOT\DLE\SUB! The response code is not known.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\NUL\SOH\DC2\ETX>\EOT\v\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\NUL\STX\DC2\ETX>\SO\SI\n\
    \Y\n\
    \\ACK\EOT\SOH\EOT\NUL\STX\SOH\DC2\ETXA\EOT\v\SUBJ The response code to notify that the number of requests are under limit.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\SOH\SOH\DC2\ETXA\EOT\ACK\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\SOH\STX\DC2\ETXA\t\n\
    \\n\
    \X\n\
    \\ACK\EOT\SOH\EOT\NUL\STX\STX\DC2\ETXD\EOT\DC3\SUBI The response code to notify that the number of requests are over limit.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\STX\SOH\DC2\ETXD\EOT\SO\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\STX\STX\DC2\ETXD\DC1\DC2\n\
    \g\n\
    \\EOT\EOT\SOH\ETX\NUL\DC2\EOTH\STXg\ETX\SUBY Defines an actual rate limit in terms of requests per unit of time and the unit itself.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\ETX\NUL\SOH\DC2\ETXH\n\
    \\DC3\n\
    \\r\n\
    \\ENQ\EOT\SOH\ETX\NUL\a\DC2\EOTI\EOTJA\n\
    \\DC2\n\
    \\n\
    \\EOT\SOH\ETX\NUL\a\211\136\225\ETX\SOH\DC2\EOTI\EOTJA\n\
    \\129\SOH\n\
    \\ACK\EOT\SOH\ETX\NUL\EOT\NUL\DC2\EOTN\EOT]\ENQ\SUBq Identifies the unit of of time for rate limit.\n\
    \ [#comment: replace by envoy/type/v3/ratelimit_unit.proto in v4]\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\EOT\NUL\SOH\DC2\ETXN\t\r\n\
    \.\n\
    \\b\EOT\SOH\ETX\NUL\EOT\NUL\STX\NUL\DC2\ETXP\ACK\DC2\SUB\GS The time unit is not known.\n\
    \\n\
    \\DLE\n\
    \\t\EOT\SOH\ETX\NUL\EOT\NUL\STX\NUL\SOH\DC2\ETXP\ACK\r\n\
    \\DLE\n\
    \\t\EOT\SOH\ETX\NUL\EOT\NUL\STX\NUL\STX\DC2\ETXP\DLE\DC1\n\
    \7\n\
    \\b\EOT\SOH\ETX\NUL\EOT\NUL\STX\SOH\DC2\ETXS\ACK\DC1\SUB& The time unit representing a second.\n\
    \\n\
    \\DLE\n\
    \\t\EOT\SOH\ETX\NUL\EOT\NUL\STX\SOH\SOH\DC2\ETXS\ACK\f\n\
    \\DLE\n\
    \\t\EOT\SOH\ETX\NUL\EOT\NUL\STX\SOH\STX\DC2\ETXS\SI\DLE\n\
    \7\n\
    \\b\EOT\SOH\ETX\NUL\EOT\NUL\STX\STX\DC2\ETXV\ACK\DC1\SUB& The time unit representing a minute.\n\
    \\n\
    \\DLE\n\
    \\t\EOT\SOH\ETX\NUL\EOT\NUL\STX\STX\SOH\DC2\ETXV\ACK\f\n\
    \\DLE\n\
    \\t\EOT\SOH\ETX\NUL\EOT\NUL\STX\STX\STX\DC2\ETXV\SI\DLE\n\
    \6\n\
    \\b\EOT\SOH\ETX\NUL\EOT\NUL\STX\ETX\DC2\ETXY\ACK\SI\SUB% The time unit representing an hour.\n\
    \\n\
    \\DLE\n\
    \\t\EOT\SOH\ETX\NUL\EOT\NUL\STX\ETX\SOH\DC2\ETXY\ACK\n\
    \\n\
    \\DLE\n\
    \\t\EOT\SOH\ETX\NUL\EOT\NUL\STX\ETX\STX\DC2\ETXY\r\SO\n\
    \4\n\
    \\b\EOT\SOH\ETX\NUL\EOT\NUL\STX\EOT\DC2\ETX\\\ACK\SO\SUB# The time unit representing a day.\n\
    \\n\
    \\DLE\n\
    \\t\EOT\SOH\ETX\NUL\EOT\NUL\STX\EOT\SOH\DC2\ETX\\\ACK\t\n\
    \\DLE\n\
    \\t\EOT\SOH\ETX\NUL\EOT\NUL\STX\EOT\STX\DC2\ETX\\\f\r\n\
    \5\n\
    \\ACK\EOT\SOH\ETX\NUL\STX\NUL\DC2\ETX`\EOT\DC4\SUB& A name or description of this limit.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\NUL\ENQ\DC2\ETX`\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\NUL\SOH\DC2\ETX`\v\SI\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\NUL\ETX\DC2\ETX`\DC2\DC3\n\
    \9\n\
    \\ACK\EOT\SOH\ETX\NUL\STX\SOH\DC2\ETXc\EOT!\SUB* The number of requests per unit of time.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\SOH\ENQ\DC2\ETXc\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\SOH\SOH\DC2\ETXc\v\FS\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\SOH\ETX\DC2\ETXc\US \n\
    \\"\n\
    \\ACK\EOT\SOH\ETX\NUL\STX\STX\DC2\ETXf\EOT\DC2\SUB\DC3 The unit of time.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\STX\ACK\DC2\ETXf\EOT\b\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\STX\SOH\DC2\ETXf\t\r\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\STX\ETX\DC2\ETXf\DLE\DC1\n\
    \\203\SOH\n\
    \\EOT\EOT\SOH\ETX\SOH\DC2\EOTl\STXt\ETX\SUB\188\SOH Cacheable quota for responses, see documentation for the :ref:`quota\n\
    \ <envoy_v3_api_field_service.ratelimit.v3.RateLimitResponse.DescriptorStatus.quota>` field.\n\
    \ [#not-implemented-hide:]\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\ETX\SOH\SOH\DC2\ETXl\n\
    \\SI\n\
    \Q\n\
    \\ACK\EOT\SOH\ETX\SOH\STX\NUL\DC2\ETXn\EOT<\SUBB Number of matching requests granted in quota. Must be 1 or more.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\SOH\STX\NUL\ENQ\DC2\ETXn\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\SOH\STX\NUL\SOH\DC2\ETXn\v\DC3\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\SOH\STX\NUL\ETX\DC2\ETXn\SYN\ETB\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\SOH\STX\NUL\b\DC2\ETXn\CAN;\n\
    \\DC1\n\
    \\n\
    \\EOT\SOH\ETX\SOH\STX\NUL\b\175\b\ENQ\DC2\ETXn\EM:\n\
    \\SO\n\
    \\ACK\EOT\SOH\ETX\SOH\b\NUL\DC2\EOTp\EOTs\ENQ\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\SOH\b\NUL\SOH\DC2\ETXp\n\
    \\RS\n\
    \:\n\
    \\ACK\EOT\SOH\ETX\SOH\STX\SOH\DC2\ETXr\ACK0\SUB+ Point in time at which the quota expires.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\SOH\STX\SOH\ACK\DC2\ETXr\ACK\US\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\SOH\STX\SOH\SOH\DC2\ETXr +\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\SOH\STX\SOH\ETX\DC2\ETXr./\n\
    \&\n\
    \\EOT\EOT\SOH\ETX\STX\DC2\ENQw\STX\167\SOH\ETX\SUB\ETB [#next-free-field: 6]\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\ETX\STX\SOH\DC2\ETXw\n\
    \\SUB\n\
    \\r\n\
    \\ENQ\EOT\SOH\ETX\STX\a\DC2\EOTx\EOTyH\n\
    \\DC2\n\
    \\n\
    \\EOT\SOH\ETX\STX\a\211\136\225\ETX\SOH\DC2\EOTx\EOTyH\n\
    \@\n\
    \\ACK\EOT\SOH\ETX\STX\STX\NUL\DC2\ETX|\EOT\DC2\SUB1 The response code for an individual descriptor.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\STX\STX\NUL\ACK\DC2\ETX|\EOT\b\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\STX\STX\NUL\SOH\DC2\ETX|\t\r\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\STX\STX\NUL\ETX\DC2\ETX|\DLE\DC1\n\
    \Z\n\
    \\ACK\EOT\SOH\ETX\STX\STX\SOH\DC2\ETX\DEL\EOT \SUBK The current limit as configured by the server. Useful for debugging, etc.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\STX\STX\SOH\ACK\DC2\ETX\DEL\EOT\r\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\STX\STX\SOH\SOH\DC2\ETX\DEL\SO\ESC\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\STX\STX\SOH\ETX\DC2\ETX\DEL\RS\US\n\
    \?\n\
    \\ACK\EOT\SOH\ETX\STX\STX\STX\DC2\EOT\130\SOH\EOT\US\SUB/ The limit remaining in the current time unit.\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\STX\STX\STX\ENQ\DC2\EOT\130\SOH\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\STX\STX\STX\SOH\DC2\EOT\130\SOH\v\SUB\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\STX\STX\STX\ETX\DC2\EOT\130\SOH\GS\RS\n\
    \C\n\
    \\ACK\EOT\SOH\ETX\STX\STX\ETX\DC2\EOT\133\SOH\EOT6\SUB3 Duration until reset of the current limit window.\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\STX\STX\ETX\ACK\DC2\EOT\133\SOH\EOT\FS\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\STX\STX\ETX\SOH\DC2\EOT\133\SOH\GS1\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\STX\STX\ETX\ETX\DC2\EOT\133\SOH45\n\
    \\160\SI\n\
    \\ACK\EOT\SOH\ETX\STX\STX\EOT\DC2\EOT\166\SOH\EOT\DC4\SUB\143\SI Quota granted for the descriptor. This is a certain number of requests over a period of time.\n\
    \ The client may cache this result and apply the effective RateLimitResponse to future matching\n\
    \ requests containing a matching descriptor without querying rate limit service.\n\
    \\n\
    \ Quota is available for a request if its descriptor set has cached quota available for all\n\
    \ descriptors.\n\
    \\n\
    \ If quota is available, a RLS request will not be made and the quota will be reduced by 1 for\n\
    \ all matching descriptors.\n\
    \\n\
    \ If there is not sufficient quota, there are three cases:\n\
    \ 1. A cached entry exists for a RLS descriptor that is out-of-quota, but not expired.\n\
    \    In this case, the request will be treated as OVER_LIMIT.\n\
    \ 2. Some RLS descriptors have a cached entry that has valid quota but some RLS descriptors\n\
    \    have no cached entry. This will trigger a new RLS request.\n\
    \    When the result is returned, a single unit will be consumed from the quota for all\n\
    \    matching descriptors.\n\
    \    If the server did not provide a quota, such as the quota message is empty for some of\n\
    \    the descriptors, then the request admission is determined by the\n\
    \    :ref:`overall_code <envoy_v3_api_field_service.ratelimit.v3.RateLimitResponse.overall_code>`.\n\
    \ 3. All RLS descriptors lack a cached entry, this will trigger a new RLS request,\n\
    \    When the result is returned, a single unit will be consumed from the quota for all\n\
    \    matching descriptors.\n\
    \    If the server did not provide a quota, such as the quota message is empty for some of\n\
    \    the descriptors, then the request admission is determined by the\n\
    \    :ref:`overall_code <envoy_v3_api_field_service.ratelimit.v3.RateLimitResponse.overall_code>`.\n\
    \\n\
    \ When quota expires due to timeout, a new RLS request will also be made.\n\
    \ The implementation may choose to preemptively query the rate limit server for more quota on or\n\
    \ before expiration or before the available quota runs out.\n\
    \ [#not-implemented-hide:]\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\STX\STX\EOT\ACK\DC2\EOT\166\SOH\EOT\t\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\STX\STX\EOT\SOH\DC2\EOT\166\SOH\n\
    \\SI\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\STX\STX\EOT\ETX\DC2\EOT\166\SOH\DC2\DC3\n\
    \\140\SOH\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\EOT\171\SOH\STX\CAN\SUB~ The overall response code which takes into account all of the descriptors that were passed\n\
    \ in the RateLimitRequest message.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\EOT\171\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\EOT\171\SOH\a\DC3\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\EOT\171\SOH\SYN\ETB\n\
    \\151\STX\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\EOT\176\SOH\STX)\SUB\136\STX A list of DescriptorStatus messages which matches the length of the descriptor list passed\n\
    \ in the RateLimitRequest. This can be used by the caller to determine which individual\n\
    \ descriptors failed and/or what the currently configured limits are for all of them.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\EOT\176\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\EOT\176\SOH\v\ESC\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\EOT\176\SOH\FS$\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\EOT\176\SOH'(\n\
    \8\n\
    \\EOT\EOT\SOH\STX\STX\DC2\EOT\179\SOH\STXB\SUB* A list of headers to add to the response\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\STX\EOT\DC2\EOT\179\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\STX\ACK\DC2\EOT\179\SOH\v%\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\EOT\179\SOH&=\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\EOT\179\SOH@A\n\
    \F\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\EOT\182\SOH\STXA\SUB8 A list of headers to add to the request when forwarded\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ETX\EOT\DC2\EOT\182\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ETX\ACK\DC2\EOT\182\SOH\v%\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\EOT\182\SOH&<\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\EOT\182\SOH?@\n\
    \b\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\EOT\185\SOH\STX\NAK\SUBT A response body to send to the downstream client when the response code is not OK.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\EOT\ENQ\DC2\EOT\185\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\EOT\185\SOH\b\DLE\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\EOT\185\SOH\DC3\DC4\n\
    \\175\EOT\n\
    \\EOT\EOT\SOH\STX\ENQ\DC2\EOT\194\SOH\STX.\SUB\160\EOT Optional response metadata that will be emitted as dynamic metadata to be consumed by the next\n\
    \ filter. This metadata lives in a namespace specified by the canonical name of extension filter\n\
    \ that requires it:\n\
    \\n\
    \ - :ref:`envoy.filters.http.ratelimit <config_http_filters_ratelimit_dynamic_metadata>` for HTTP filter.\n\
    \ - :ref:`envoy.filters.network.ratelimit <config_network_filters_ratelimit_dynamic_metadata>` for network filter.\n\
    \ - :ref:`envoy.filters.thrift.rate_limit <config_thrift_filters_rate_limit_dynamic_metadata>` for Thrift filter.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ENQ\ACK\DC2\EOT\194\SOH\STX\CAN\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ENQ\SOH\DC2\EOT\194\SOH\EM)\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ENQ\ETX\DC2\EOT\194\SOH,-b\ACKproto3"