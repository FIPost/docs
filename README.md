![ipost-logo](./assets/logo-name.png)
# Documentation | Fontys Internal Post

This project aims to modernise the internal post system of Fontys. Currently most of the administrative work is done manually. This project moves these processes to a semi-automated system with similar functionalities as PostNL. Some of the features include: seeing a package status and tracing locations.

Keep in mind that this project is broader than just the FHICT. The software made will need to scale to manage the administrative post process of the entire Fontys organisation with over 4300 employees and 44.000 students.

This project is part of a long term pilot and is supposed to be developed over multiple semesters by different PT groups of software students. Transferability is therefore a must.
<br/><br/>
[DeX](https://dex.software/project/details/119-Fontys-Internal-Post)

## Collaboration
Currently this project is being developed by semester 6 software students of the FHICT. Because this project is larger than most and should end up in production, it is important that everything is well documented. Even though the project will be managed by PT groups, every bit of help is appreciated and everyone who is willing to help out is welcome.

### Project Management
The project is being developed with an Agile proces. We work in sprints of three weeks in which we deliver User Stories. These are decided in accordance with the Product Owner. The User Stories itself are written from the perspective of the user and mostly contain functionality in a vertical line from front- to backend. To manage this proces we use Azure Boards (IPost Azure DevOps Organisatie).

### Code
This project is designed with a microservices architecture. This allows us to scale our software to support a large user base. To separate all concerns and keep the repositories SOLID each domain has been given each own codebase with its own repository. At the moment our code is being transported from our Gitlab to Github.

Reason for this change is to encourage open source contributions.

### Repositories
- [ui](https://git.fhict.nl/I418126/ipost-userservice)
- [track-and-trace-ui ](https://git.fhict.nl/I418126/ipost-personeelsservice)
- [gateway](https://git.fhict.nl/I418126/ipost-locatieservice)
- [pakketservice](https://git.fhict.nl/I418126/ipost-pakketservice)
- [locatieservice](https://git.fhict.nl/I418126/ipost-ui)
- [docs)](https://git.fhict.nl/I418126/ipost-track-and-trace-ui)

### Architectural Styles
- Architectural Styles
- Microservices
- Event Streaming
- Serverless

### Languages & Frameworks
- .NET CORE - C#
- VueJS - TypeScript, JavaScript, SCSS, HTML

### Deployment
- Docker
- MicroK8s
- Ubuntu 20.02 Linux

## Getting started
```zsh
# Zsh, Bash or Git Bash for Windows

mkdir ipost && cd ipost
git clone https://git.fhict.nl/ipost/docs
git clone https://git.fhict.nl/ipost/userservice
git clone https://git.fhict.nl/ipost/personeelsservice
git clone https://git.fhict.nl/ipost/locatieservice
git clone https://git.fhict.nl/ipost/pakketservice
git clone https://git.fhict.nl/ipost/ui
git clone https://git.fhict.nl/ipost/track-and-trace-ui
```

## Contact
### Developers
| Naam | Email |
| ------ | ------ |
| Aron Heesakkers | 418126@student.fontys.nl.  |
| Jaap van der Meer | 405273@student.fontys.nl |
| Sverre van Gompel | 403979@student.fontys.nl |
| Sjors Scholten | 361483@student.fontys.nl    |
| Kevin Wieling | 359356@student.fontys.nl.    |
| Robin Witte | 399366@student.fontys.nl       |

### Stakeholders

| Naam | Functie |
| ------ | ------ |
| Jacques De Roij | Product Owner en contactpersoon tussen het softwareteam en de eindgebruikers. |
| Patrick de Beer | Coördinator van de softwarestroming van FHICT. Is verantwoordelijk voor langlopende projecten binnen Fontys. |
| Simon Bergmans S.P.C.G. | Leidinggevende van de Facilitaire Dienst van Fontys Tilburg |
| Levent Önder | Medewerker bij de Facilitaire Dienst van Fontys Stappengoor |


### LICENSE
[Needs license]