LIBRARY()

SRCS(
    iscan.cpp
)

PEERDIR(
    ydb/core/formats/arrow
    ydb/core/tx/columnshard/engines/protos  # stopgap: includes top-level columnshard_private_events.h (cycle)
    ydb/core/tx/datashard
    ydb/library/actors/core
    ydb/library/services
    ydb/library/signals
)

END()

RECURSE_FOR_TESTS(
    ut
)