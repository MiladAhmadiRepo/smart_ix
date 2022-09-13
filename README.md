# smart_ix

Smart Ix Flutter project.

# what is the task :


[What Are Alexa Routines And How Do You Use Them](https://youtu.be/AwYn31iql0Q)

[How To Start A Smart Home in 2022](https://youtu.be/mI86siMLX_o)

[smart-home-iot-solution-providers](https://developer.amazon.com/en-US/docs/alexa/smarthome/smart-home-iot-solution-providers.html)

[wwa-program-guidelines](https://developer.amazon.com/support/legal/wwa-program-guidelines)

[smart-home-general-apis](https://developer.amazon.com/en-US/docs/alexa/device-apis/smart-home-general-apis.html)

[alexa-brightnesscontroller](https://developer.amazon.com/en-US/docs/alexa/device-apis/alexa-brightnesscontroller.html)

-------------------------------------------------------------------------------

# how should look like ui of project ::

https://dribbble.com/shots/17409361-Smart-Home-Mobile-App

https://dribbble.com/shots/17461749-Rebound-Smart-Home-Mobile-App

-------------------------------------------------------------------------------


[online documentation](https://docs.flutter.dev/)
 

## The Architecture and Dependency Rule

take a deep look at this diagram below:

<img src="https://miro.medium.com/max/700/1*N_XONqoIoxQIExSn2yVNDQ.png" alt="J" style="max-width: 100%;">

an explanation for each layer.

Data Layer
The bottom layer as shown in the above diagram, its responsibility is to deal directly with the raw data from different data sources (REST API, GraphQl, Sqlite, …etc). The raw data then will be mapped or converted into models (dart objects) using some serialization methods to serialize/deserialize data (Json, Xml, …etc) from and into.

The models in the data layer are different from the entities in the Domain layer, and the reason why we have this method is because in some cases if we want to change the raw data serialization from (Json) to (xml), this changes will not affect the internal entities (Domain’s Entities). The models in the data layers will extends the properties from the Domain’s entities and it will always depend on the Domain layer since the models are extending all of the properties from the entities.

The data layer is also contains the real implementations of the abstraction in the domain layer including the repositories, so we define the interface (abstracted class) in the domain layer.. then we implement that class in the data layer and this is useful because we have the ability to change or add multiple implementations without interacting with the Domain layer.

Keep in mind that repositories returns entities and not models, because the contract written inside the Domain layer, and with that.. we can say that the Data layer depends on Domain layer.

Presentation Layer
This layer contains two important parts: The Blocs (also ViewModels) and The UI

What’s BloC and Why?

What’s happening here is that any user interaction that requires data from outside this layers (Remote or Local), the blocs will handle that kind of interactions. Consider the blocs like viewmodels but instead of having one single class, the pattern of the Bloc is to separate those interactions (like user inputs) as Events, the bloc will process that event and return/emit results back to the UI as States. The UI part then can listen to the states (stream of states) and do actions, build widgets or anything upon those states.

The reason why most of developers like using bloc is because of the code separation (event, state, bloc) and this is also plays good role of having clean code.

Now, the presentation layer as we now know its parts.. also depends on the Domain layer since the bloc will use the injected domain dependencies (such as usecases) to process its jobs.

Domain Layer
The most interesting layer in the architecture, this layer contains only the internal entities and what this mean is that our domain’s entities are completely independent from any changes that could occur outside this layer. Both Presentation and Data layers depending on this layer, since the data layer will implement what ever contracts written here.. and the presentation layer will use those contracts with the implementations to be used as an injected dependencies.

Keep in mind that the presentation layer will only gets data as entities and not models, this is why we separate each layer individually and independently.


## Folder Structure

look at the diagram below and consider folders Structure

<img src="https://miro.medium.com/max/700/1*xR0QbSgfoODe3rH0nPwpPg.png" alt="J" style="max-width: 100%;">
