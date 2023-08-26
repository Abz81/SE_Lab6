## NoteService

The **NoteService** microservice offers versatile CRUD operations for managing notes. These functionalities are accessible via the `/api/notes` endpoint.

- **Create Note:** To create a new note, initiate a `POST` request to `/api/notes`. Include the `title` and `description` of the note in the request body. User authentication requires providing the `username` and `password` associated with the UserManagementService.

- **Update Note:** Modify note details using a `PUT` request to `/api/notes/{note_id}`, where `note_id` is the unique identifier of the note. User authentication via `username` and `password` is required.

- **Retrieve Notes:** Obtain note information through a `GET` request to `/api/notes`. This endpoint provides either specific note data or a list of all notes. No authentication is needed for retrieving notes.

- **Retrieve Specific Note:** Fetch a specific note by making a `GET` request to `/api/notes/{note_id}`, where `note_id` is the unique identifier of the note. No authentication is required.

- **Delete Note:** Delete a note using a `DELETE` request to `/api/notes/{note_id}`, where `note_id` is the unique identifier of the note. Include `username` and `password` for authentication. This action permanently removes the selected note.


**Replica Identification:** When using Docker Swarm with multiple replicas of NoteService, an `X-Replica-ID` header is included in the response. This header contains the `replica_id` value, allowing you to identify which service instance processed the request.
