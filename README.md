# Python tutor - UNCode

[![GitHub license](https://img.shields.io/github/license/JuezUN/OnlinePythonTutor?style=plastic)][license_url]
[![Codacy Badge](https://app.codacy.com/project/badge/Grade/e509c0980c394a22a60315e7f384c1e8)][codacy_url]
[![CLA assistant](https://cla-assistant.io/readme/badge/JuezUN/OnlinePythonTutor)][cla_url]
[![Gitter](https://badges.gitter.im/uncode-unal/community.svg)][gitter_url]

Python Tutor helps people overcome a fundamental barrier to learning programming: understanding what happens as the computer executes each line of a program's source code. Using this tool, you can write Python, Java, JavaScript, TypeScript, Ruby, C, and C++ programs in your Web browser and visualize what the computer is doing step-by-step as it executes those programs.

This repository makes some small modifications to the original code to provide it as a Docker service
 to embed the interface on UNCode and allow users to visualize their code in Python3, C/C++ and Java.

The container is deployed in Docker Hub: [unjudge/onlinepythontutor][unjudge/onlinepythontutor_url].

The official website of the project is: <http://pythontutor.com/>.

This tool was created by [Philip Guo](http://pgbovine.net/) in January 2010. [See project history](history.txt).

## Documentation

- [Frequently Asked Questions](v3/docs/user-FAQ.md)
- [Overview for Developers](v3/docs/developer-overview.md)

To view all documentation related to this project check the [docs][py_tutor_docs_url]. For additional documentation,
 please refer to the [Wiki][uncode_wiki_url].

## Getting started

As this repository in only focused on supporting this utility for UNCode, there are two options to deploy and embed
 this on UNCode. This integration is also done in the organization main repository, in the [multilang plugin][multilang_url].

Check the [iframe embedding documentation][embedding_path] for a better understanding on how this works.

However, it can be hard to run your own visualizer locally for non-Python languages, since it is necessary to deploy
 a service called `cokapi`, check the [documentation][cokapi_url]. This service also needs a backend to run
 C/C++ code, this is located in the repository [opt-cpp-backend][opt_cpp_backend_url].
 
To understand more how to deploy this service, check this [script][deploy_cokapi_url], which automatically deploys it
 when UNCode is deployed automatically.

For further directions, see [Overview for Developers](v3/docs/developer-overview.md) or explore the [rest of the docs](v3/docs/).

### Running container

To run the container, you can either pull it from docker hub:

```bash
docker pull unjudge/onlinepythontutor
```

Or build it:

```bash
docker build -t unjudge/onlinepythontutor ./
docker run -p 8003:8003 -e PY_CMD=python3 unjudge/onlinepythontutor 
```

To visualize python 2.7 code, run the container using the environment variable `PY_CMD` with `python`, rather than `python3`.

You should see the visualizer at: http://localhost:8003/visualize.html

### Running locally

If you want to run locally on your own computer, to run Python visualizations try:

```
pip install bottle # make sure the bottle webserver (http://bottlepy.org/) is installed
cd OnlinePythonTutor/v3/
python bottle_server.py
```

You should see the visualizer at: <http://localhost:8003/visualize.html> and the live programming environment
 at: <http://localhost:8003/live.html> 

## Roadmap

See the [UNCode GitHub Project][project_url] for a list of proposed features for UNCode, known issues and how they are
 being tackled.

## Contributing

Go to [CONTRIBUTING][contributing_url] to see the guidelines and how to start contributing to UNCode.

## License

Distributed under the MIT License. See [LICENSE][license_url] for more information.

## Contact

In case of technical questions, please use the [gitter communication channel][gitter_url].

In case you want to host your course on our deployment, email us on: <uncode_fibog@unal.edu.co>

UNCode: <https://uncode.unal.edu.co>

Project page: <https://juezun.github.io/>

## Acknowledgments

For code or security contributions

- John DeNero - for helping with the official Python 3 port and lots of code patches
- Chris Horne - https://github.com/lahwran - for security tips
- Joshua Landau - joshua@landau.ws - for security tips
- David Wyde - https://davidwyde.com/ - for security tips
- Peter Wentworth and his students - for working on the original Python 3 fork circa 2010/2011
- Brad Miller - for adding pop-up question dialogs to visualizations, and other bug fixes
- David Pritchard and Will Gwozdz - for the Java visualizer and other frontend enhancements
- Peter Robinson - for v3/make_visualizations.py
- Chris Meyers - for custom visualizations such as v3/matrix.py and v3/htmlFrame.py
- Irene Chen - for holistic visualization mode -- v3/js/holistic.js


For general advice and feedback about this project:

- Ned Batchelder
- Jennifer Campbell
- John Dalbey
- John DeNero
- Fredo Durand
- Michael Ernst
- David Evans
- Paul Gries
- Mark Guzdial
- Adam Hartz
- Sean Lip

... and many, many more!

[license_url]: https://github.com/JuezUN/OnlinePythonTutor/blob/master/LICENSE.txt
[codacy_url]: https://www.codacy.com/gh/JuezUN/OnlinePythonTutor/dashboard?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=JuezUN/OnlinePythonTutor&amp;utm_campaign=Badge_Grade
[cla_url]: https://cla-assistant.io/JuezUN/OnlinePythonTutor
[unjudge/onlinepythontutor_url]: https://hub.docker.com/r/unjudge/onlinepythontutor
[py_tutor_docs_url]: https://github.com/juezun/OnlinePythonTutor/tree/master/v3/docs
[uncode_wiki_url]: https://github.com/JuezUN/INGInious/wiki
[project_url]: https://github.com/orgs/JuezUN/projects/3
[contributing_url]: https://github.com/JuezUN/OnlinePythonTutor/blob/master/CONTRIBUTING.md
[gitter_url]:https://gitter.im/uncode-unal/community?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge
[multilang_url]: https://github.com/JuezUN/INGInious/tree/master/inginious/frontend/plugins/multilang
[embedding_path]: v3/docs/embedding-HOWTO.md
[cokapi_url]: https://github.com/JuezUN/OnlinePythonTutor/tree/master/v4-cokapi
[opt_cpp_backend_url]: https://github.com/JuezUN/opt-cpp-backend
[deploy_cokapi_url]: https://github.com/JuezUN/Deployment/blob/master/deployment_scripts/deploy_cokapi_service.sh