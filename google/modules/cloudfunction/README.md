# Module `google/cloudfunction`

This module offers infrastructure code defining a Google Cloud Function triggered by Cloud Firestore `create` event type.

It creates the following resources:

- a Cloud Function tiggered by `cloud.firestore/eventTypes/document.create`
- a Cloud Storage bucket for uploading an archive of the function's source code
- a Service Account specific to the Cloud Function with `roles/cloudfunctions.invoker` and `roles/datastore.user` roles

It also enables the following APIs on the projet if they are not already:

- Cloud Functions API
- Cloud Build API
