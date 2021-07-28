{- This file was auto-generated from envoy/extensions/filters/http/grpc_json_transcoder/v3/transcoder.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Http.GrpcJsonTranscoder.V3.Transcoder_Fields where
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
addWhitespace ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "addWhitespace" a) =>
  Lens.Family2.LensLike' f s a
addWhitespace = Data.ProtoLens.Field.field @"addWhitespace"
alwaysPrintEnumsAsInts ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "alwaysPrintEnumsAsInts" a) =>
  Lens.Family2.LensLike' f s a
alwaysPrintEnumsAsInts
  = Data.ProtoLens.Field.field @"alwaysPrintEnumsAsInts"
alwaysPrintPrimitiveFields ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "alwaysPrintPrimitiveFields" a) =>
  Lens.Family2.LensLike' f s a
alwaysPrintPrimitiveFields
  = Data.ProtoLens.Field.field @"alwaysPrintPrimitiveFields"
autoMapping ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "autoMapping" a) =>
  Lens.Family2.LensLike' f s a
autoMapping = Data.ProtoLens.Field.field @"autoMapping"
convertGrpcStatus ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "convertGrpcStatus" a) =>
  Lens.Family2.LensLike' f s a
convertGrpcStatus = Data.ProtoLens.Field.field @"convertGrpcStatus"
ignoreUnknownQueryParameters ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ignoreUnknownQueryParameters" a) =>
  Lens.Family2.LensLike' f s a
ignoreUnknownQueryParameters
  = Data.ProtoLens.Field.field @"ignoreUnknownQueryParameters"
ignoredQueryParameters ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ignoredQueryParameters" a) =>
  Lens.Family2.LensLike' f s a
ignoredQueryParameters
  = Data.ProtoLens.Field.field @"ignoredQueryParameters"
matchIncomingRequestRoute ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "matchIncomingRequestRoute" a) =>
  Lens.Family2.LensLike' f s a
matchIncomingRequestRoute
  = Data.ProtoLens.Field.field @"matchIncomingRequestRoute"
maybe'descriptorSet ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'descriptorSet" a) =>
  Lens.Family2.LensLike' f s a
maybe'descriptorSet
  = Data.ProtoLens.Field.field @"maybe'descriptorSet"
maybe'printOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'printOptions" a) =>
  Lens.Family2.LensLike' f s a
maybe'printOptions
  = Data.ProtoLens.Field.field @"maybe'printOptions"
maybe'protoDescriptor ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'protoDescriptor" a) =>
  Lens.Family2.LensLike' f s a
maybe'protoDescriptor
  = Data.ProtoLens.Field.field @"maybe'protoDescriptor"
maybe'protoDescriptorBin ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'protoDescriptorBin" a) =>
  Lens.Family2.LensLike' f s a
maybe'protoDescriptorBin
  = Data.ProtoLens.Field.field @"maybe'protoDescriptorBin"
maybe'requestValidationOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'requestValidationOptions" a) =>
  Lens.Family2.LensLike' f s a
maybe'requestValidationOptions
  = Data.ProtoLens.Field.field @"maybe'requestValidationOptions"
preserveProtoFieldNames ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "preserveProtoFieldNames" a) =>
  Lens.Family2.LensLike' f s a
preserveProtoFieldNames
  = Data.ProtoLens.Field.field @"preserveProtoFieldNames"
printOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "printOptions" a) =>
  Lens.Family2.LensLike' f s a
printOptions = Data.ProtoLens.Field.field @"printOptions"
protoDescriptor ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "protoDescriptor" a) =>
  Lens.Family2.LensLike' f s a
protoDescriptor = Data.ProtoLens.Field.field @"protoDescriptor"
protoDescriptorBin ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "protoDescriptorBin" a) =>
  Lens.Family2.LensLike' f s a
protoDescriptorBin
  = Data.ProtoLens.Field.field @"protoDescriptorBin"
rejectUnknownMethod ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "rejectUnknownMethod" a) =>
  Lens.Family2.LensLike' f s a
rejectUnknownMethod
  = Data.ProtoLens.Field.field @"rejectUnknownMethod"
rejectUnknownQueryParameters ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "rejectUnknownQueryParameters" a) =>
  Lens.Family2.LensLike' f s a
rejectUnknownQueryParameters
  = Data.ProtoLens.Field.field @"rejectUnknownQueryParameters"
requestValidationOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "requestValidationOptions" a) =>
  Lens.Family2.LensLike' f s a
requestValidationOptions
  = Data.ProtoLens.Field.field @"requestValidationOptions"
services ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "services" a) =>
  Lens.Family2.LensLike' f s a
services = Data.ProtoLens.Field.field @"services"
urlUnescapeSpec ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "urlUnescapeSpec" a) =>
  Lens.Family2.LensLike' f s a
urlUnescapeSpec = Data.ProtoLens.Field.field @"urlUnescapeSpec"
vec'ignoredQueryParameters ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'ignoredQueryParameters" a) =>
  Lens.Family2.LensLike' f s a
vec'ignoredQueryParameters
  = Data.ProtoLens.Field.field @"vec'ignoredQueryParameters"
vec'services ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'services" a) =>
  Lens.Family2.LensLike' f s a
vec'services = Data.ProtoLens.Field.field @"vec'services"