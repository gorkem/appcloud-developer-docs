# API Reference

## Packages
- [appstudio.redhat.com/v1alpha1](#appstudioredhatcomv1alpha1)


## appstudio.redhat.com/v1alpha1

Package v1alpha1 contains API Schema definitions for the appstudio v1alpha1 API group

### Resource Types
- [Application](#application)
- [ApplicationList](#applicationlist)
- [Component](#component)
- [ComponentDetectionQuery](#componentdetectionquery)
- [ComponentDetectionQueryList](#componentdetectionquerylist)
- [ComponentList](#componentlist)



#### Application



Application is the Schema for the applications API

_Appears in:_
- [ApplicationList](#applicationlist)

| Field | Description |
| --- | --- |
| `apiVersion` _string_ | `appstudio.redhat.com/v1alpha1`
| `kind` _string_ | `Application`
| `metadata` _[ObjectMeta](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.22/#objectmeta-v1-meta)_ | Refer to Kubernetes API documentation for fields of `metadata`. |
| `spec` _[ApplicationSpec](#applicationspec)_ |  |


#### ApplicationGitRepository



ApplicationGitRepository defines a git repository for a given Application resource (either appmodel or gitops)

_Appears in:_
- [ApplicationSpec](#applicationspec)

| Field | Description |
| --- | --- |
| `url` _string_ | URL refers to the repository URL that should be used. |
| `branch` _string_ | Branch corresponds to the branch in the repository that should be used |
| `context` _string_ | Context corresponds to the context within the repository that should be used |


#### ApplicationList



ApplicationList contains a list of Application



| Field | Description |
| --- | --- |
| `apiVersion` _string_ | `appstudio.redhat.com/v1alpha1`
| `kind` _string_ | `ApplicationList`
| `metadata` _[ListMeta](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.22/#listmeta-v1-meta)_ | Refer to Kubernetes API documentation for fields of `metadata`. |
| `items` _[Application](#application) array_ |  |


#### ApplicationSpec



ApplicationSpec defines the desired state of Application

_Appears in:_
- [Application](#application)

| Field | Description |
| --- | --- |
| `displayName` _string_ | DisplayName refers to the name that an application will be deployed with in App Studio. |
| `appModelRepository` _[ApplicationGitRepository](#applicationgitrepository)_ | AppModelRepository refers to the git repository that will store the application model (a devfile) Can be the same as GitOps repository. A repository will be generated if this field is left blank. |
| `gitOpsRepository` _[ApplicationGitRepository](#applicationgitrepository)_ | GitOpsRepository refers to the git repository that will store the gitops resources. Can be the same as App Model Repository. A repository will be generated if this field is left blank. |
| `description` _string_ | Description refers to a brief description of the application. |




#### Build



Build describes the various build artifacts associated with a given component

_Appears in:_
- [ComponentSpec](#componentspec)

| Field | Description |
| --- | --- |
| `containerImage` _string_ | The container image that is created during the component build. |


#### Component



Component is the Schema for the components API

_Appears in:_
- [ComponentList](#componentlist)

| Field | Description |
| --- | --- |
| `apiVersion` _string_ | `appstudio.redhat.com/v1alpha1`
| `kind` _string_ | `Component`
| `metadata` _[ObjectMeta](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.22/#objectmeta-v1-meta)_ | Refer to Kubernetes API documentation for fields of `metadata`. |
| `spec` _[ComponentSpec](#componentspec)_ |  |


#### ComponentDetectionDescription



ComponentDetectionDescription holds all the information about the component being detected

_Appears in:_
- [ComponentDetectionQueryStatus](#componentdetectionquerystatus)

| Field | Description |
| --- | --- |
| `devfileFound` _boolean_ | DevfileFound tells if a devfile is found in the component |
| `language` _string_ | Language specifies the language of the component detected |
| `projectType` _string_ | ProjectType specifies the type of project for the component detected |
| `componentStub` _[ComponentSpec](#componentspec)_ | ComponentStub is a stub of the component detected with all the info gathered from the devfile or service detection |




#### ComponentDetectionQuery



ComponentDetectionQuery is the Schema for the componentdetectionqueries API

_Appears in:_
- [ComponentDetectionQueryList](#componentdetectionquerylist)

| Field | Description |
| --- | --- |
| `apiVersion` _string_ | `appstudio.redhat.com/v1alpha1`
| `kind` _string_ | `ComponentDetectionQuery`
| `metadata` _[ObjectMeta](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.22/#objectmeta-v1-meta)_ | Refer to Kubernetes API documentation for fields of `metadata`. |
| `spec` _[ComponentDetectionQuerySpec](#componentdetectionqueryspec)_ |  |


#### ComponentDetectionQueryList



ComponentDetectionQueryList contains a list of ComponentDetectionQuery



| Field | Description |
| --- | --- |
| `apiVersion` _string_ | `appstudio.redhat.com/v1alpha1`
| `kind` _string_ | `ComponentDetectionQueryList`
| `metadata` _[ListMeta](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.22/#listmeta-v1-meta)_ | Refer to Kubernetes API documentation for fields of `metadata`. |
| `items` _[ComponentDetectionQuery](#componentdetectionquery) array_ |  |


#### ComponentDetectionQuerySpec



ComponentDetectionQuerySpec defines the desired state of ComponentDetectionQuery

_Appears in:_
- [ComponentDetectionQuery](#componentdetectionquery)

| Field | Description |
| --- | --- |
| `git` _[GitSource](#gitsource)_ | Git Source for a Component |
| `isMultiComponent` _boolean_ | IsMultiComponent specifies if the component specified has multiple services |




#### ComponentList



ComponentList contains a list of Component



| Field | Description |
| --- | --- |
| `apiVersion` _string_ | `appstudio.redhat.com/v1alpha1`
| `kind` _string_ | `ComponentList`
| `metadata` _[ListMeta](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.22/#listmeta-v1-meta)_ | Refer to Kubernetes API documentation for fields of `metadata`. |
| `items` _[Component](#component) array_ |  |


#### ComponentSource



ComponentSource describes the Component source

_Appears in:_
- [ComponentSpec](#componentspec)

| Field | Description |
| --- | --- |
| `ComponentSourceUnion` _[ComponentSourceUnion](#componentsourceunion)_ |  |


#### ComponentSourceUnion





_Appears in:_
- [ComponentSource](#componentsource)

| Field | Description |
| --- | --- |
| `git` _[GitSource](#gitsource)_ | Git Source for a Component |
| `image` _[ImageSource](#imagesource)_ | Image Source for a Component |


#### ComponentSpec



ComponentSpec defines the desired state of Component

_Appears in:_
- [Component](#component)
- [ComponentDetectionDescription](#componentdetectiondescription)

| Field | Description |
| --- | --- |
| `componentName` _string_ | ComponentName is name of the component to be added to the HASApplication |
| `application` _string_ | Application to add the component to |
| `source` _[ComponentSource](#componentsource)_ | Source describes the Component source |
| `context` _string_ | A relative path inside the git repo containing the component |
| `resources` _[ResourceRequirements](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.22/#resourcerequirements-v1-core)_ | Compute Resources required by this component |
| `replicas` _integer_ | The number of replicas to deploy the component with |
| `targetPort` _integer_ | The port to expose the component over |
| `route` _string_ | The route to expose the component with |
| `env` _[EnvVar](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.22/#envvar-v1-core) array_ | An array of environment variables to add to the component |
| `build` _[Build](#build)_ | The build artifacts associated with the component |




#### GitOpsStatus



GitOpsStatus contains GitOps repository-specific status for the component

_Appears in:_
- [ComponentStatus](#componentstatus)

| Field | Description |
| --- | --- |
| `repositoryURL` _string_ | RepositoryURL is the gitops repository URL for the component |
| `branch` _string_ | Branch is the branch used for the gitops repository |
| `context` _string_ | Context is the path within the gitops repository used for the gitops resources |


#### GitSource





_Appears in:_
- [ComponentDetectionQuerySpec](#componentdetectionqueryspec)
- [ComponentSourceUnion](#componentsourceunion)

| Field | Description |
| --- | --- |
| `url` _string_ | If importing from git, the repository to create the component from |
| `secret` _string_ | Secret containing a Person Access Token to clone a sample, if using private repository |
| `devfileUrl` _string_ | If specified, the devfile at the URL will be used for the component. |


#### ImageSource





_Appears in:_
- [ComponentSourceUnion](#componentsourceunion)

| Field | Description |
| --- | --- |
| `containerImage` _string_ | If importing from git, container image to create the component from |


