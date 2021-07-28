{- This file was auto-generated from envoy/type/v3/http_status.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Type.V3.HttpStatus (
        HttpStatus(), StatusCode(..), StatusCode(),
        StatusCode'UnrecognizedValue
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
     
         * 'Proto.Envoy.Type.V3.HttpStatus_Fields.code' @:: Lens' HttpStatus StatusCode@ -}
data HttpStatus
  = HttpStatus'_constructor {_HttpStatus'code :: !StatusCode,
                             _HttpStatus'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HttpStatus where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HttpStatus "code" StatusCode where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpStatus'code (\ x__ y__ -> x__ {_HttpStatus'code = y__}))
        Prelude.id
instance Data.ProtoLens.Message HttpStatus where
  messageName _ = Data.Text.pack "envoy.type.v3.HttpStatus"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \HttpStatus\DC29\n\
      \\EOTcode\CAN\SOH \SOH(\SO2\EM.envoy.type.v3.StatusCodeR\EOTcodeB\n\
      \\250B\a\130\SOH\EOT\DLE\SOH \NUL:\FS\154\197\136\RS\ETB\n\
      \\NAKenvoy.type.HttpStatus"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        code__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "code"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor StatusCode)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"code")) ::
              Data.ProtoLens.FieldDescriptor HttpStatus
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, code__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HttpStatus'_unknownFields
        (\ x__ y__ -> x__ {_HttpStatus'_unknownFields = y__})
  defMessage
    = HttpStatus'_constructor
        {_HttpStatus'code = Data.ProtoLens.fieldDefault,
         _HttpStatus'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HttpStatus -> Data.ProtoLens.Encoding.Bytes.Parser HttpStatus
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "HttpStatus"
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData HttpStatus where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HttpStatus'_unknownFields x__)
             (Control.DeepSeq.deepseq (_HttpStatus'code x__) ())
newtype StatusCode'UnrecognizedValue
  = StatusCode'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data StatusCode
  = Empty |
    Continue |
    OK |
    Created |
    Accepted |
    NonAuthoritativeInformation |
    NoContent |
    ResetContent |
    PartialContent |
    MultiStatus |
    AlreadyReported |
    IMUsed |
    MultipleChoices |
    MovedPermanently |
    Found |
    SeeOther |
    NotModified |
    UseProxy |
    TemporaryRedirect |
    PermanentRedirect |
    BadRequest |
    Unauthorized |
    PaymentRequired |
    Forbidden |
    NotFound |
    MethodNotAllowed |
    NotAcceptable |
    ProxyAuthenticationRequired |
    RequestTimeout |
    Conflict |
    Gone |
    LengthRequired |
    PreconditionFailed |
    PayloadTooLarge |
    URITooLong |
    UnsupportedMediaType |
    RangeNotSatisfiable |
    ExpectationFailed |
    MisdirectedRequest |
    UnprocessableEntity |
    Locked |
    FailedDependency |
    UpgradeRequired |
    PreconditionRequired |
    TooManyRequests |
    RequestHeaderFieldsTooLarge |
    InternalServerError |
    NotImplemented |
    BadGateway |
    ServiceUnavailable |
    GatewayTimeout |
    HTTPVersionNotSupported |
    VariantAlsoNegotiates |
    InsufficientStorage |
    LoopDetected |
    NotExtended |
    NetworkAuthenticationRequired |
    StatusCode'Unrecognized !StatusCode'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum StatusCode where
  maybeToEnum 0 = Prelude.Just Empty
  maybeToEnum 100 = Prelude.Just Continue
  maybeToEnum 200 = Prelude.Just OK
  maybeToEnum 201 = Prelude.Just Created
  maybeToEnum 202 = Prelude.Just Accepted
  maybeToEnum 203 = Prelude.Just NonAuthoritativeInformation
  maybeToEnum 204 = Prelude.Just NoContent
  maybeToEnum 205 = Prelude.Just ResetContent
  maybeToEnum 206 = Prelude.Just PartialContent
  maybeToEnum 207 = Prelude.Just MultiStatus
  maybeToEnum 208 = Prelude.Just AlreadyReported
  maybeToEnum 226 = Prelude.Just IMUsed
  maybeToEnum 300 = Prelude.Just MultipleChoices
  maybeToEnum 301 = Prelude.Just MovedPermanently
  maybeToEnum 302 = Prelude.Just Found
  maybeToEnum 303 = Prelude.Just SeeOther
  maybeToEnum 304 = Prelude.Just NotModified
  maybeToEnum 305 = Prelude.Just UseProxy
  maybeToEnum 307 = Prelude.Just TemporaryRedirect
  maybeToEnum 308 = Prelude.Just PermanentRedirect
  maybeToEnum 400 = Prelude.Just BadRequest
  maybeToEnum 401 = Prelude.Just Unauthorized
  maybeToEnum 402 = Prelude.Just PaymentRequired
  maybeToEnum 403 = Prelude.Just Forbidden
  maybeToEnum 404 = Prelude.Just NotFound
  maybeToEnum 405 = Prelude.Just MethodNotAllowed
  maybeToEnum 406 = Prelude.Just NotAcceptable
  maybeToEnum 407 = Prelude.Just ProxyAuthenticationRequired
  maybeToEnum 408 = Prelude.Just RequestTimeout
  maybeToEnum 409 = Prelude.Just Conflict
  maybeToEnum 410 = Prelude.Just Gone
  maybeToEnum 411 = Prelude.Just LengthRequired
  maybeToEnum 412 = Prelude.Just PreconditionFailed
  maybeToEnum 413 = Prelude.Just PayloadTooLarge
  maybeToEnum 414 = Prelude.Just URITooLong
  maybeToEnum 415 = Prelude.Just UnsupportedMediaType
  maybeToEnum 416 = Prelude.Just RangeNotSatisfiable
  maybeToEnum 417 = Prelude.Just ExpectationFailed
  maybeToEnum 421 = Prelude.Just MisdirectedRequest
  maybeToEnum 422 = Prelude.Just UnprocessableEntity
  maybeToEnum 423 = Prelude.Just Locked
  maybeToEnum 424 = Prelude.Just FailedDependency
  maybeToEnum 426 = Prelude.Just UpgradeRequired
  maybeToEnum 428 = Prelude.Just PreconditionRequired
  maybeToEnum 429 = Prelude.Just TooManyRequests
  maybeToEnum 431 = Prelude.Just RequestHeaderFieldsTooLarge
  maybeToEnum 500 = Prelude.Just InternalServerError
  maybeToEnum 501 = Prelude.Just NotImplemented
  maybeToEnum 502 = Prelude.Just BadGateway
  maybeToEnum 503 = Prelude.Just ServiceUnavailable
  maybeToEnum 504 = Prelude.Just GatewayTimeout
  maybeToEnum 505 = Prelude.Just HTTPVersionNotSupported
  maybeToEnum 506 = Prelude.Just VariantAlsoNegotiates
  maybeToEnum 507 = Prelude.Just InsufficientStorage
  maybeToEnum 508 = Prelude.Just LoopDetected
  maybeToEnum 510 = Prelude.Just NotExtended
  maybeToEnum 511 = Prelude.Just NetworkAuthenticationRequired
  maybeToEnum k
    = Prelude.Just
        (StatusCode'Unrecognized
           (StatusCode'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum Empty = "Empty"
  showEnum Continue = "Continue"
  showEnum OK = "OK"
  showEnum Created = "Created"
  showEnum Accepted = "Accepted"
  showEnum NonAuthoritativeInformation
    = "NonAuthoritativeInformation"
  showEnum NoContent = "NoContent"
  showEnum ResetContent = "ResetContent"
  showEnum PartialContent = "PartialContent"
  showEnum MultiStatus = "MultiStatus"
  showEnum AlreadyReported = "AlreadyReported"
  showEnum IMUsed = "IMUsed"
  showEnum MultipleChoices = "MultipleChoices"
  showEnum MovedPermanently = "MovedPermanently"
  showEnum Found = "Found"
  showEnum SeeOther = "SeeOther"
  showEnum NotModified = "NotModified"
  showEnum UseProxy = "UseProxy"
  showEnum TemporaryRedirect = "TemporaryRedirect"
  showEnum PermanentRedirect = "PermanentRedirect"
  showEnum BadRequest = "BadRequest"
  showEnum Unauthorized = "Unauthorized"
  showEnum PaymentRequired = "PaymentRequired"
  showEnum Forbidden = "Forbidden"
  showEnum NotFound = "NotFound"
  showEnum MethodNotAllowed = "MethodNotAllowed"
  showEnum NotAcceptable = "NotAcceptable"
  showEnum ProxyAuthenticationRequired
    = "ProxyAuthenticationRequired"
  showEnum RequestTimeout = "RequestTimeout"
  showEnum Conflict = "Conflict"
  showEnum Gone = "Gone"
  showEnum LengthRequired = "LengthRequired"
  showEnum PreconditionFailed = "PreconditionFailed"
  showEnum PayloadTooLarge = "PayloadTooLarge"
  showEnum URITooLong = "URITooLong"
  showEnum UnsupportedMediaType = "UnsupportedMediaType"
  showEnum RangeNotSatisfiable = "RangeNotSatisfiable"
  showEnum ExpectationFailed = "ExpectationFailed"
  showEnum MisdirectedRequest = "MisdirectedRequest"
  showEnum UnprocessableEntity = "UnprocessableEntity"
  showEnum Locked = "Locked"
  showEnum FailedDependency = "FailedDependency"
  showEnum UpgradeRequired = "UpgradeRequired"
  showEnum PreconditionRequired = "PreconditionRequired"
  showEnum TooManyRequests = "TooManyRequests"
  showEnum RequestHeaderFieldsTooLarge
    = "RequestHeaderFieldsTooLarge"
  showEnum InternalServerError = "InternalServerError"
  showEnum NotImplemented = "NotImplemented"
  showEnum BadGateway = "BadGateway"
  showEnum ServiceUnavailable = "ServiceUnavailable"
  showEnum GatewayTimeout = "GatewayTimeout"
  showEnum HTTPVersionNotSupported = "HTTPVersionNotSupported"
  showEnum VariantAlsoNegotiates = "VariantAlsoNegotiates"
  showEnum InsufficientStorage = "InsufficientStorage"
  showEnum LoopDetected = "LoopDetected"
  showEnum NotExtended = "NotExtended"
  showEnum NetworkAuthenticationRequired
    = "NetworkAuthenticationRequired"
  showEnum (StatusCode'Unrecognized (StatusCode'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "Empty" = Prelude.Just Empty
    | (Prelude.==) k "Continue" = Prelude.Just Continue
    | (Prelude.==) k "OK" = Prelude.Just OK
    | (Prelude.==) k "Created" = Prelude.Just Created
    | (Prelude.==) k "Accepted" = Prelude.Just Accepted
    | (Prelude.==) k "NonAuthoritativeInformation"
    = Prelude.Just NonAuthoritativeInformation
    | (Prelude.==) k "NoContent" = Prelude.Just NoContent
    | (Prelude.==) k "ResetContent" = Prelude.Just ResetContent
    | (Prelude.==) k "PartialContent" = Prelude.Just PartialContent
    | (Prelude.==) k "MultiStatus" = Prelude.Just MultiStatus
    | (Prelude.==) k "AlreadyReported" = Prelude.Just AlreadyReported
    | (Prelude.==) k "IMUsed" = Prelude.Just IMUsed
    | (Prelude.==) k "MultipleChoices" = Prelude.Just MultipleChoices
    | (Prelude.==) k "MovedPermanently" = Prelude.Just MovedPermanently
    | (Prelude.==) k "Found" = Prelude.Just Found
    | (Prelude.==) k "SeeOther" = Prelude.Just SeeOther
    | (Prelude.==) k "NotModified" = Prelude.Just NotModified
    | (Prelude.==) k "UseProxy" = Prelude.Just UseProxy
    | (Prelude.==) k "TemporaryRedirect"
    = Prelude.Just TemporaryRedirect
    | (Prelude.==) k "PermanentRedirect"
    = Prelude.Just PermanentRedirect
    | (Prelude.==) k "BadRequest" = Prelude.Just BadRequest
    | (Prelude.==) k "Unauthorized" = Prelude.Just Unauthorized
    | (Prelude.==) k "PaymentRequired" = Prelude.Just PaymentRequired
    | (Prelude.==) k "Forbidden" = Prelude.Just Forbidden
    | (Prelude.==) k "NotFound" = Prelude.Just NotFound
    | (Prelude.==) k "MethodNotAllowed" = Prelude.Just MethodNotAllowed
    | (Prelude.==) k "NotAcceptable" = Prelude.Just NotAcceptable
    | (Prelude.==) k "ProxyAuthenticationRequired"
    = Prelude.Just ProxyAuthenticationRequired
    | (Prelude.==) k "RequestTimeout" = Prelude.Just RequestTimeout
    | (Prelude.==) k "Conflict" = Prelude.Just Conflict
    | (Prelude.==) k "Gone" = Prelude.Just Gone
    | (Prelude.==) k "LengthRequired" = Prelude.Just LengthRequired
    | (Prelude.==) k "PreconditionFailed"
    = Prelude.Just PreconditionFailed
    | (Prelude.==) k "PayloadTooLarge" = Prelude.Just PayloadTooLarge
    | (Prelude.==) k "URITooLong" = Prelude.Just URITooLong
    | (Prelude.==) k "UnsupportedMediaType"
    = Prelude.Just UnsupportedMediaType
    | (Prelude.==) k "RangeNotSatisfiable"
    = Prelude.Just RangeNotSatisfiable
    | (Prelude.==) k "ExpectationFailed"
    = Prelude.Just ExpectationFailed
    | (Prelude.==) k "MisdirectedRequest"
    = Prelude.Just MisdirectedRequest
    | (Prelude.==) k "UnprocessableEntity"
    = Prelude.Just UnprocessableEntity
    | (Prelude.==) k "Locked" = Prelude.Just Locked
    | (Prelude.==) k "FailedDependency" = Prelude.Just FailedDependency
    | (Prelude.==) k "UpgradeRequired" = Prelude.Just UpgradeRequired
    | (Prelude.==) k "PreconditionRequired"
    = Prelude.Just PreconditionRequired
    | (Prelude.==) k "TooManyRequests" = Prelude.Just TooManyRequests
    | (Prelude.==) k "RequestHeaderFieldsTooLarge"
    = Prelude.Just RequestHeaderFieldsTooLarge
    | (Prelude.==) k "InternalServerError"
    = Prelude.Just InternalServerError
    | (Prelude.==) k "NotImplemented" = Prelude.Just NotImplemented
    | (Prelude.==) k "BadGateway" = Prelude.Just BadGateway
    | (Prelude.==) k "ServiceUnavailable"
    = Prelude.Just ServiceUnavailable
    | (Prelude.==) k "GatewayTimeout" = Prelude.Just GatewayTimeout
    | (Prelude.==) k "HTTPVersionNotSupported"
    = Prelude.Just HTTPVersionNotSupported
    | (Prelude.==) k "VariantAlsoNegotiates"
    = Prelude.Just VariantAlsoNegotiates
    | (Prelude.==) k "InsufficientStorage"
    = Prelude.Just InsufficientStorage
    | (Prelude.==) k "LoopDetected" = Prelude.Just LoopDetected
    | (Prelude.==) k "NotExtended" = Prelude.Just NotExtended
    | (Prelude.==) k "NetworkAuthenticationRequired"
    = Prelude.Just NetworkAuthenticationRequired
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded StatusCode where
  minBound = Empty
  maxBound = NetworkAuthenticationRequired
instance Prelude.Enum StatusCode where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum StatusCode: " (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum Empty = 0
  fromEnum Continue = 100
  fromEnum OK = 200
  fromEnum Created = 201
  fromEnum Accepted = 202
  fromEnum NonAuthoritativeInformation = 203
  fromEnum NoContent = 204
  fromEnum ResetContent = 205
  fromEnum PartialContent = 206
  fromEnum MultiStatus = 207
  fromEnum AlreadyReported = 208
  fromEnum IMUsed = 226
  fromEnum MultipleChoices = 300
  fromEnum MovedPermanently = 301
  fromEnum Found = 302
  fromEnum SeeOther = 303
  fromEnum NotModified = 304
  fromEnum UseProxy = 305
  fromEnum TemporaryRedirect = 307
  fromEnum PermanentRedirect = 308
  fromEnum BadRequest = 400
  fromEnum Unauthorized = 401
  fromEnum PaymentRequired = 402
  fromEnum Forbidden = 403
  fromEnum NotFound = 404
  fromEnum MethodNotAllowed = 405
  fromEnum NotAcceptable = 406
  fromEnum ProxyAuthenticationRequired = 407
  fromEnum RequestTimeout = 408
  fromEnum Conflict = 409
  fromEnum Gone = 410
  fromEnum LengthRequired = 411
  fromEnum PreconditionFailed = 412
  fromEnum PayloadTooLarge = 413
  fromEnum URITooLong = 414
  fromEnum UnsupportedMediaType = 415
  fromEnum RangeNotSatisfiable = 416
  fromEnum ExpectationFailed = 417
  fromEnum MisdirectedRequest = 421
  fromEnum UnprocessableEntity = 422
  fromEnum Locked = 423
  fromEnum FailedDependency = 424
  fromEnum UpgradeRequired = 426
  fromEnum PreconditionRequired = 428
  fromEnum TooManyRequests = 429
  fromEnum RequestHeaderFieldsTooLarge = 431
  fromEnum InternalServerError = 500
  fromEnum NotImplemented = 501
  fromEnum BadGateway = 502
  fromEnum ServiceUnavailable = 503
  fromEnum GatewayTimeout = 504
  fromEnum HTTPVersionNotSupported = 505
  fromEnum VariantAlsoNegotiates = 506
  fromEnum InsufficientStorage = 507
  fromEnum LoopDetected = 508
  fromEnum NotExtended = 510
  fromEnum NetworkAuthenticationRequired = 511
  fromEnum (StatusCode'Unrecognized (StatusCode'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ NetworkAuthenticationRequired
    = Prelude.error
        "StatusCode.succ: bad argument NetworkAuthenticationRequired. This value would be out of bounds."
  succ Empty = Continue
  succ Continue = OK
  succ OK = Created
  succ Created = Accepted
  succ Accepted = NonAuthoritativeInformation
  succ NonAuthoritativeInformation = NoContent
  succ NoContent = ResetContent
  succ ResetContent = PartialContent
  succ PartialContent = MultiStatus
  succ MultiStatus = AlreadyReported
  succ AlreadyReported = IMUsed
  succ IMUsed = MultipleChoices
  succ MultipleChoices = MovedPermanently
  succ MovedPermanently = Found
  succ Found = SeeOther
  succ SeeOther = NotModified
  succ NotModified = UseProxy
  succ UseProxy = TemporaryRedirect
  succ TemporaryRedirect = PermanentRedirect
  succ PermanentRedirect = BadRequest
  succ BadRequest = Unauthorized
  succ Unauthorized = PaymentRequired
  succ PaymentRequired = Forbidden
  succ Forbidden = NotFound
  succ NotFound = MethodNotAllowed
  succ MethodNotAllowed = NotAcceptable
  succ NotAcceptable = ProxyAuthenticationRequired
  succ ProxyAuthenticationRequired = RequestTimeout
  succ RequestTimeout = Conflict
  succ Conflict = Gone
  succ Gone = LengthRequired
  succ LengthRequired = PreconditionFailed
  succ PreconditionFailed = PayloadTooLarge
  succ PayloadTooLarge = URITooLong
  succ URITooLong = UnsupportedMediaType
  succ UnsupportedMediaType = RangeNotSatisfiable
  succ RangeNotSatisfiable = ExpectationFailed
  succ ExpectationFailed = MisdirectedRequest
  succ MisdirectedRequest = UnprocessableEntity
  succ UnprocessableEntity = Locked
  succ Locked = FailedDependency
  succ FailedDependency = UpgradeRequired
  succ UpgradeRequired = PreconditionRequired
  succ PreconditionRequired = TooManyRequests
  succ TooManyRequests = RequestHeaderFieldsTooLarge
  succ RequestHeaderFieldsTooLarge = InternalServerError
  succ InternalServerError = NotImplemented
  succ NotImplemented = BadGateway
  succ BadGateway = ServiceUnavailable
  succ ServiceUnavailable = GatewayTimeout
  succ GatewayTimeout = HTTPVersionNotSupported
  succ HTTPVersionNotSupported = VariantAlsoNegotiates
  succ VariantAlsoNegotiates = InsufficientStorage
  succ InsufficientStorage = LoopDetected
  succ LoopDetected = NotExtended
  succ NotExtended = NetworkAuthenticationRequired
  succ (StatusCode'Unrecognized _)
    = Prelude.error "StatusCode.succ: bad argument: unrecognized value"
  pred Empty
    = Prelude.error
        "StatusCode.pred: bad argument Empty. This value would be out of bounds."
  pred Continue = Empty
  pred OK = Continue
  pred Created = OK
  pred Accepted = Created
  pred NonAuthoritativeInformation = Accepted
  pred NoContent = NonAuthoritativeInformation
  pred ResetContent = NoContent
  pred PartialContent = ResetContent
  pred MultiStatus = PartialContent
  pred AlreadyReported = MultiStatus
  pred IMUsed = AlreadyReported
  pred MultipleChoices = IMUsed
  pred MovedPermanently = MultipleChoices
  pred Found = MovedPermanently
  pred SeeOther = Found
  pred NotModified = SeeOther
  pred UseProxy = NotModified
  pred TemporaryRedirect = UseProxy
  pred PermanentRedirect = TemporaryRedirect
  pred BadRequest = PermanentRedirect
  pred Unauthorized = BadRequest
  pred PaymentRequired = Unauthorized
  pred Forbidden = PaymentRequired
  pred NotFound = Forbidden
  pred MethodNotAllowed = NotFound
  pred NotAcceptable = MethodNotAllowed
  pred ProxyAuthenticationRequired = NotAcceptable
  pred RequestTimeout = ProxyAuthenticationRequired
  pred Conflict = RequestTimeout
  pred Gone = Conflict
  pred LengthRequired = Gone
  pred PreconditionFailed = LengthRequired
  pred PayloadTooLarge = PreconditionFailed
  pred URITooLong = PayloadTooLarge
  pred UnsupportedMediaType = URITooLong
  pred RangeNotSatisfiable = UnsupportedMediaType
  pred ExpectationFailed = RangeNotSatisfiable
  pred MisdirectedRequest = ExpectationFailed
  pred UnprocessableEntity = MisdirectedRequest
  pred Locked = UnprocessableEntity
  pred FailedDependency = Locked
  pred UpgradeRequired = FailedDependency
  pred PreconditionRequired = UpgradeRequired
  pred TooManyRequests = PreconditionRequired
  pred RequestHeaderFieldsTooLarge = TooManyRequests
  pred InternalServerError = RequestHeaderFieldsTooLarge
  pred NotImplemented = InternalServerError
  pred BadGateway = NotImplemented
  pred ServiceUnavailable = BadGateway
  pred GatewayTimeout = ServiceUnavailable
  pred HTTPVersionNotSupported = GatewayTimeout
  pred VariantAlsoNegotiates = HTTPVersionNotSupported
  pred InsufficientStorage = VariantAlsoNegotiates
  pred LoopDetected = InsufficientStorage
  pred NotExtended = LoopDetected
  pred NetworkAuthenticationRequired = NotExtended
  pred (StatusCode'Unrecognized _)
    = Prelude.error "StatusCode.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault StatusCode where
  fieldDefault = Empty
instance Control.DeepSeq.NFData StatusCode where
  rnf x__ = Prelude.seq x__ ()
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\USenvoy/type/v3/http_status.proto\DC2\renvoy.type.v3\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"e\n\
    \\n\
    \HttpStatus\DC29\n\
    \\EOTcode\CAN\SOH \SOH(\SO2\EM.envoy.type.v3.StatusCodeR\EOTcodeB\n\
    \\250B\a\130\SOH\EOT\DLE\SOH \NUL:\FS\154\197\136\RS\ETB\n\
    \\NAKenvoy.type.HttpStatus*\181\t\n\
    \\n\
    \StatusCode\DC2\t\n\
    \\ENQEmpty\DLE\NUL\DC2\f\n\
    \\bContinue\DLEd\DC2\a\n\
    \\STXOK\DLE\200\SOH\DC2\f\n\
    \\aCreated\DLE\201\SOH\DC2\r\n\
    \\bAccepted\DLE\202\SOH\DC2 \n\
    \\ESCNonAuthoritativeInformation\DLE\203\SOH\DC2\SO\n\
    \\tNoContent\DLE\204\SOH\DC2\DC1\n\
    \\fResetContent\DLE\205\SOH\DC2\DC3\n\
    \\SOPartialContent\DLE\206\SOH\DC2\DLE\n\
    \\vMultiStatus\DLE\207\SOH\DC2\DC4\n\
    \\SIAlreadyReported\DLE\208\SOH\DC2\v\n\
    \\ACKIMUsed\DLE\226\SOH\DC2\DC4\n\
    \\SIMultipleChoices\DLE\172\STX\DC2\NAK\n\
    \\DLEMovedPermanently\DLE\173\STX\DC2\n\
    \\n\
    \\ENQFound\DLE\174\STX\DC2\r\n\
    \\bSeeOther\DLE\175\STX\DC2\DLE\n\
    \\vNotModified\DLE\176\STX\DC2\r\n\
    \\bUseProxy\DLE\177\STX\DC2\SYN\n\
    \\DC1TemporaryRedirect\DLE\179\STX\DC2\SYN\n\
    \\DC1PermanentRedirect\DLE\180\STX\DC2\SI\n\
    \\n\
    \BadRequest\DLE\144\ETX\DC2\DC1\n\
    \\fUnauthorized\DLE\145\ETX\DC2\DC4\n\
    \\SIPaymentRequired\DLE\146\ETX\DC2\SO\n\
    \\tForbidden\DLE\147\ETX\DC2\r\n\
    \\bNotFound\DLE\148\ETX\DC2\NAK\n\
    \\DLEMethodNotAllowed\DLE\149\ETX\DC2\DC2\n\
    \\rNotAcceptable\DLE\150\ETX\DC2 \n\
    \\ESCProxyAuthenticationRequired\DLE\151\ETX\DC2\DC3\n\
    \\SORequestTimeout\DLE\152\ETX\DC2\r\n\
    \\bConflict\DLE\153\ETX\DC2\t\n\
    \\EOTGone\DLE\154\ETX\DC2\DC3\n\
    \\SOLengthRequired\DLE\155\ETX\DC2\ETB\n\
    \\DC2PreconditionFailed\DLE\156\ETX\DC2\DC4\n\
    \\SIPayloadTooLarge\DLE\157\ETX\DC2\SI\n\
    \\n\
    \URITooLong\DLE\158\ETX\DC2\EM\n\
    \\DC4UnsupportedMediaType\DLE\159\ETX\DC2\CAN\n\
    \\DC3RangeNotSatisfiable\DLE\160\ETX\DC2\SYN\n\
    \\DC1ExpectationFailed\DLE\161\ETX\DC2\ETB\n\
    \\DC2MisdirectedRequest\DLE\165\ETX\DC2\CAN\n\
    \\DC3UnprocessableEntity\DLE\166\ETX\DC2\v\n\
    \\ACKLocked\DLE\167\ETX\DC2\NAK\n\
    \\DLEFailedDependency\DLE\168\ETX\DC2\DC4\n\
    \\SIUpgradeRequired\DLE\170\ETX\DC2\EM\n\
    \\DC4PreconditionRequired\DLE\172\ETX\DC2\DC4\n\
    \\SITooManyRequests\DLE\173\ETX\DC2 \n\
    \\ESCRequestHeaderFieldsTooLarge\DLE\175\ETX\DC2\CAN\n\
    \\DC3InternalServerError\DLE\244\ETX\DC2\DC3\n\
    \\SONotImplemented\DLE\245\ETX\DC2\SI\n\
    \\n\
    \BadGateway\DLE\246\ETX\DC2\ETB\n\
    \\DC2ServiceUnavailable\DLE\247\ETX\DC2\DC3\n\
    \\SOGatewayTimeout\DLE\248\ETX\DC2\FS\n\
    \\ETBHTTPVersionNotSupported\DLE\249\ETX\DC2\SUB\n\
    \\NAKVariantAlsoNegotiates\DLE\250\ETX\DC2\CAN\n\
    \\DC3InsufficientStorage\DLE\251\ETX\DC2\DC1\n\
    \\fLoopDetected\DLE\252\ETX\DC2\DLE\n\
    \\vNotExtended\DLE\254\ETX\DC2\"\n\
    \\GSNetworkAuthenticationRequired\DLE\255\ETXB8\n\
    \\ESCio.envoyproxy.envoy.type.v3B\SIHttpStatusProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\192\ETB\n\
    \\a\DC2\ENQ\NUL\NUL\141\SOH\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\SYN\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL'\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL+\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NUL4\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\b\NUL4\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL0\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\t\NUL0\n\
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
    \\189\SOH\n\
    \\STX\ENQ\NUL\DC2\ENQ\DC1\NUL\133\SOH\SOH\SUB\135\SOH HTTP response codes supported in Envoy.\n\
    \ For more details: https://www.iana.org/assignments/http-status-codes/http-status-codes.xhtml\n\
    \2& [#protodoc-title: HTTP status codes]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ENQ\NUL\SOH\DC2\ETX\DC1\ENQ\SI\n\
    \y\n\
    \\EOT\ENQ\NUL\STX\NUL\DC2\ETX\DC4\STX\f\SUBl Empty - This code not part of the HTTP status code specification, but it is needed for proto\n\
    \ `enum` type.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\SOH\DC2\ETX\DC4\STX\a\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\STX\DC2\ETX\DC4\n\
    \\v\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\SOH\DC2\ETX\SYN\STX\DC1\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\SOH\DC2\ETX\SYN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\STX\DC2\ETX\SYN\r\DLE\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\STX\DC2\ETX\CAN\STX\v\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\SOH\DC2\ETX\CAN\STX\EOT\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\STX\DC2\ETX\CAN\a\n\
    \\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\ETX\DC2\ETX\SUB\STX\DLE\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETX\SOH\DC2\ETX\SUB\STX\t\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETX\STX\DC2\ETX\SUB\f\SI\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\EOT\DC2\ETX\FS\STX\DC1\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\EOT\SOH\DC2\ETX\FS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\EOT\STX\DC2\ETX\FS\r\DLE\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\ENQ\DC2\ETX\RS\STX$\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ENQ\SOH\DC2\ETX\RS\STX\GS\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ENQ\STX\DC2\ETX\RS #\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\ACK\DC2\ETX \STX\DC2\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ACK\SOH\DC2\ETX \STX\v\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ACK\STX\DC2\ETX \SO\DC1\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\a\DC2\ETX\"\STX\NAK\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\a\SOH\DC2\ETX\"\STX\SO\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\a\STX\DC2\ETX\"\DC1\DC4\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\b\DC2\ETX$\STX\ETB\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\b\SOH\DC2\ETX$\STX\DLE\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\b\STX\DC2\ETX$\DC3\SYN\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\t\DC2\ETX&\STX\DC4\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\t\SOH\DC2\ETX&\STX\r\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\t\STX\DC2\ETX&\DLE\DC3\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\n\
    \\DC2\ETX(\STX\CAN\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\n\
    \\SOH\DC2\ETX(\STX\DC1\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\n\
    \\STX\DC2\ETX(\DC4\ETB\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\v\DC2\ETX*\STX\SI\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\v\SOH\DC2\ETX*\STX\b\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\v\STX\DC2\ETX*\v\SO\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\f\DC2\ETX,\STX\CAN\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\f\SOH\DC2\ETX,\STX\DC1\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\f\STX\DC2\ETX,\DC4\ETB\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\r\DC2\ETX.\STX\EM\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\r\SOH\DC2\ETX.\STX\DC2\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\r\STX\DC2\ETX.\NAK\CAN\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\SO\DC2\ETX0\STX\SO\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SO\SOH\DC2\ETX0\STX\a\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SO\STX\DC2\ETX0\n\
    \\r\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\SI\DC2\ETX2\STX\DC1\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SI\SOH\DC2\ETX2\STX\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SI\STX\DC2\ETX2\r\DLE\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\DLE\DC2\ETX4\STX\DC4\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\DLE\SOH\DC2\ETX4\STX\r\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\DLE\STX\DC2\ETX4\DLE\DC3\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\DC1\DC2\ETX6\STX\DC1\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\DC1\SOH\DC2\ETX6\STX\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\DC1\STX\DC2\ETX6\r\DLE\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\DC2\DC2\ETX8\STX\SUB\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\DC2\SOH\DC2\ETX8\STX\DC3\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\DC2\STX\DC2\ETX8\SYN\EM\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\DC3\DC2\ETX:\STX\SUB\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\DC3\SOH\DC2\ETX:\STX\DC3\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\DC3\STX\DC2\ETX:\SYN\EM\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\DC4\DC2\ETX<\STX\DC3\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\DC4\SOH\DC2\ETX<\STX\f\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\DC4\STX\DC2\ETX<\SI\DC2\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\NAK\DC2\ETX>\STX\NAK\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NAK\SOH\DC2\ETX>\STX\SO\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NAK\STX\DC2\ETX>\DC1\DC4\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\SYN\DC2\ETX@\STX\CAN\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SYN\SOH\DC2\ETX@\STX\DC1\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SYN\STX\DC2\ETX@\DC4\ETB\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\ETB\DC2\ETXB\STX\DC2\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETB\SOH\DC2\ETXB\STX\v\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETB\STX\DC2\ETXB\SO\DC1\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\CAN\DC2\ETXD\STX\DC1\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\CAN\SOH\DC2\ETXD\STX\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\CAN\STX\DC2\ETXD\r\DLE\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\EM\DC2\ETXF\STX\EM\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\EM\SOH\DC2\ETXF\STX\DC2\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\EM\STX\DC2\ETXF\NAK\CAN\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\SUB\DC2\ETXH\STX\SYN\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SUB\SOH\DC2\ETXH\STX\SI\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SUB\STX\DC2\ETXH\DC2\NAK\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\ESC\DC2\ETXJ\STX$\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ESC\SOH\DC2\ETXJ\STX\GS\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ESC\STX\DC2\ETXJ #\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\FS\DC2\ETXL\STX\ETB\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\FS\SOH\DC2\ETXL\STX\DLE\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\FS\STX\DC2\ETXL\DC3\SYN\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\GS\DC2\ETXN\STX\DC1\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\GS\SOH\DC2\ETXN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\GS\STX\DC2\ETXN\r\DLE\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\RS\DC2\ETXP\STX\r\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\RS\SOH\DC2\ETXP\STX\ACK\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\RS\STX\DC2\ETXP\t\f\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\US\DC2\ETXR\STX\ETB\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\US\SOH\DC2\ETXR\STX\DLE\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\US\STX\DC2\ETXR\DC3\SYN\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX \DC2\ETXT\STX\ESC\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX \SOH\DC2\ETXT\STX\DC4\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX \STX\DC2\ETXT\ETB\SUB\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX!\DC2\ETXV\STX\CAN\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX!\SOH\DC2\ETXV\STX\DC1\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX!\STX\DC2\ETXV\DC4\ETB\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\"\DC2\ETXX\STX\DC3\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\"\SOH\DC2\ETXX\STX\f\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\"\STX\DC2\ETXX\SI\DC2\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX#\DC2\ETXZ\STX\GS\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX#\SOH\DC2\ETXZ\STX\SYN\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX#\STX\DC2\ETXZ\EM\FS\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX$\DC2\ETX\\\STX\FS\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX$\SOH\DC2\ETX\\\STX\NAK\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX$\STX\DC2\ETX\\\CAN\ESC\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX%\DC2\ETX^\STX\SUB\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX%\SOH\DC2\ETX^\STX\DC3\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX%\STX\DC2\ETX^\SYN\EM\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX&\DC2\ETX`\STX\ESC\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX&\SOH\DC2\ETX`\STX\DC4\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX&\STX\DC2\ETX`\ETB\SUB\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX'\DC2\ETXb\STX\FS\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX'\SOH\DC2\ETXb\STX\NAK\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX'\STX\DC2\ETXb\CAN\ESC\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX(\DC2\ETXd\STX\SI\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX(\SOH\DC2\ETXd\STX\b\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX(\STX\DC2\ETXd\v\SO\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX)\DC2\ETXf\STX\EM\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX)\SOH\DC2\ETXf\STX\DC2\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX)\STX\DC2\ETXf\NAK\CAN\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX*\DC2\ETXh\STX\CAN\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX*\SOH\DC2\ETXh\STX\DC1\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX*\STX\DC2\ETXh\DC4\ETB\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX+\DC2\ETXj\STX\GS\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX+\SOH\DC2\ETXj\STX\SYN\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX+\STX\DC2\ETXj\EM\FS\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX,\DC2\ETXl\STX\CAN\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX,\SOH\DC2\ETXl\STX\DC1\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX,\STX\DC2\ETXl\DC4\ETB\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX-\DC2\ETXn\STX$\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX-\SOH\DC2\ETXn\STX\GS\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX-\STX\DC2\ETXn #\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX.\DC2\ETXp\STX\FS\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX.\SOH\DC2\ETXp\STX\NAK\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX.\STX\DC2\ETXp\CAN\ESC\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX/\DC2\ETXr\STX\ETB\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX/\SOH\DC2\ETXr\STX\DLE\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX/\STX\DC2\ETXr\DC3\SYN\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX0\DC2\ETXt\STX\DC3\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX0\SOH\DC2\ETXt\STX\f\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX0\STX\DC2\ETXt\SI\DC2\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX1\DC2\ETXv\STX\ESC\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX1\SOH\DC2\ETXv\STX\DC4\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX1\STX\DC2\ETXv\ETB\SUB\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX2\DC2\ETXx\STX\ETB\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX2\SOH\DC2\ETXx\STX\DLE\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX2\STX\DC2\ETXx\DC3\SYN\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX3\DC2\ETXz\STX \n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX3\SOH\DC2\ETXz\STX\EM\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX3\STX\DC2\ETXz\FS\US\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX4\DC2\ETX|\STX\RS\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX4\SOH\DC2\ETX|\STX\ETB\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX4\STX\DC2\ETX|\SUB\GS\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX5\DC2\ETX~\STX\FS\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX5\SOH\DC2\ETX~\STX\NAK\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX5\STX\DC2\ETX~\CAN\ESC\n\
    \\f\n\
    \\EOT\ENQ\NUL\STX6\DC2\EOT\128\SOH\STX\NAK\n\
    \\r\n\
    \\ENQ\ENQ\NUL\STX6\SOH\DC2\EOT\128\SOH\STX\SO\n\
    \\r\n\
    \\ENQ\ENQ\NUL\STX6\STX\DC2\EOT\128\SOH\DC1\DC4\n\
    \\f\n\
    \\EOT\ENQ\NUL\STX7\DC2\EOT\130\SOH\STX\DC4\n\
    \\r\n\
    \\ENQ\ENQ\NUL\STX7\SOH\DC2\EOT\130\SOH\STX\r\n\
    \\r\n\
    \\ENQ\ENQ\NUL\STX7\STX\DC2\EOT\130\SOH\DLE\DC3\n\
    \\f\n\
    \\EOT\ENQ\NUL\STX8\DC2\EOT\132\SOH\STX&\n\
    \\r\n\
    \\ENQ\ENQ\NUL\STX8\SOH\DC2\EOT\132\SOH\STX\US\n\
    \\r\n\
    \\ENQ\ENQ\NUL\STX8\STX\DC2\EOT\132\SOH\"%\n\
    \\FS\n\
    \\STX\EOT\NUL\DC2\ACK\136\SOH\NUL\141\SOH\SOH\SUB\SO HTTP status.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\NUL\SOH\DC2\EOT\136\SOH\b\DC2\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\137\SOH\STXW\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\137\SOH\STXW\n\
    \,\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\EOT\140\SOH\STXO\SUB\RS Supplies HTTP response code.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\EOT\140\SOH\STX\f\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\EOT\140\SOH\r\DC1\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\EOT\140\SOH\DC4\NAK\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\EOT\140\SOH\SYNN\n\
    \\DLE\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\DLE\DC2\EOT\140\SOH\ETBMb\ACKproto3"