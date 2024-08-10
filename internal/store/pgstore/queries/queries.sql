-- name: GetRoom :one
SELECT
    "id", "theme"
FROM rooms
WHERE id = $1;

-- name: GetRooms :many
SELECT
    "id", "theme"
FROM rooms;

-- name: InsertRoom :one
INSERT INTO rooms
    ( "theme" ) VALUES
    ( $1 )
RETURNING "id";

-- name: GetMessage :one
SELECT
    "id", "room_id", "message", "reaction_count", "answered"
FROM messages
WHERE
    id = $1;
