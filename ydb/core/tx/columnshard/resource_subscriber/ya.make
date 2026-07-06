LIBRARY()

SRCS(
    actor.cpp
    counters.cpp
    task.cpp
    events.cpp
    container.cpp
)

PEERDIR(
    ydb/core/protos
    ydb/core/tx/columnshard/engines/protos  # stopgap: includes top-level columnshard_private_events.h (cycle)
    ydb/library/actors/core
    ydb/core/tablet_flat
)

END()
