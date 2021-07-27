{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module AlsProto.StreamAccessLogsMessage.Log_entries where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified AlsProto.StreamAccessLogsMessage.HTTPAccessLogEntries as AlsProto.StreamAccessLogsMessage
import qualified AlsProto.StreamAccessLogsMessage.TCPAccessLogEntries as AlsProto.StreamAccessLogsMessage

data Log_entries = Http_logs{http_logs :: (AlsProto.StreamAccessLogsMessage.HTTPAccessLogEntries)}
                 | Tcp_logs{tcp_logs :: (AlsProto.StreamAccessLogsMessage.TCPAccessLogEntries)}
                   deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)
get'http_logs x
 = case x of
     Http_logs http_logs -> Prelude'.Just http_logs
     _ -> Prelude'.Nothing
get'tcp_logs x
 = case x of
     Tcp_logs tcp_logs -> Prelude'.Just tcp_logs
     _ -> Prelude'.Nothing

instance P'.Default Log_entries where
  defaultValue = Http_logs P'.defaultValue

instance P'.Mergeable Log_entries