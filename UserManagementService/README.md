## UserManagementService

The **UserManagementService** microservice provides CRUD operations for managing user accounts. These operations are accessible via the `/api/users` endpoint.

- **Create User:** To create a new user, make a `POST` request to `/api/users`, including the `username` and `password` fields in the request body. This establishes a new user profile.

- **Update User:** Modify user information with a `PUT` request to `/api/users/{user_id}`, where `user_id` represents the unique identifier of the user. Include the updated user data in the request body.

- **Retrieve Users:** Fetch user information using a `GET` request to `/api/users`. This endpoint provides details of a list of all users.

- **Retrieve Specific User:** Obtain specific user information via a `GET` request to `/api/users/{user_id}`, where `user_id` is the unique identifier of the user.

- **Delete User:** Remove a user account with a `DELETE` request to `/api/users/{user_id}`, where `user_id` is the unique identifier of the user. This action deletes the specified user.
