LIBRARY()

SRCS(
    conveyor_task.cpp
    queue.cpp
    description.cpp
    result.cpp
    stats.cpp
    comparable.cpp
)

PEERDIR(
    ydb/core/tx/program
    ydb/core/tx/columnshard/engines/protos  # stopgap: includes top-level columnshard_private_events.h (cycle)
    ydb/core/formats/arrow/reader
)

GENERATE_ENUM_SERIALIZATION(description.h)

END()
