#  Notes


# Bug 1:
-  2019-12-13 09:22:00.283757-0800 Message Board[13618:4789154] Error decoding message threads from JSON data: valueNotFound(Swift.UnkeyedDecodingContainer, Swift.DecodingError.Context(codingPath: [], debugDescription: "Cannot get unkeyed decoding container -- found null value instead.", underlyingError: nil))
a. Had to break down model into a dictionary and ensure that the the JSON was being decoded properly.
b. In the model controller, needed to fix the "fetchMessageThreads" function as that was also fetching the data not according to how the JSON was


# Bug 2:
- On initial tableviewcontroller, you cannot create a new message thread
a. Inside the MessageThreadController, we needed to resume the URLSessionDataTask


# Bug 3:
- Cannot send a message on MessageDetailViewController
- Segue was mispelled. Also added pop to VC to move back from DetailVC

