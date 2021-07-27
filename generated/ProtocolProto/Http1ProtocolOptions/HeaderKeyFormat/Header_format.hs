{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module ProtocolProto.Http1ProtocolOptions.HeaderKeyFormat.Header_format where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified ExtensionProto.TypedExtensionConfig as ExtensionProto
import qualified ProtocolProto.Http1ProtocolOptions.HeaderKeyFormat.ProperCaseWords
       as ProtocolProto.Http1ProtocolOptions.HeaderKeyFormat

data Header_format = Proper_case_words{proper_case_words :: (ProtocolProto.Http1ProtocolOptions.HeaderKeyFormat.ProperCaseWords)}
                   | Stateful_formatter{stateful_formatter :: (ExtensionProto.TypedExtensionConfig)}
                     deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)
get'proper_case_words x
 = case x of
     Proper_case_words proper_case_words -> Prelude'.Just proper_case_words
     _ -> Prelude'.Nothing
get'stateful_formatter x
 = case x of
     Stateful_formatter stateful_formatter -> Prelude'.Just stateful_formatter
     _ -> Prelude'.Nothing

instance P'.Default Header_format where
  defaultValue = Proper_case_words P'.defaultValue

instance P'.Mergeable Header_format