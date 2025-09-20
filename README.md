<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![project_license][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]


<!-- ABOUT THE PROJECT -->
## About The Project

This is a template Nix project for C++23 development using LLVM 21.
It provides a configured devshell activated by `direnv` and an example nix package.

The package itself provides a static library, binary and includes.
Unit test binary is built using `catch2_3`

<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

This is an example of how to list things you need to use the software and how to install them.
* nix
  Flake support
* direnv
  Optional

### Installation

1. Clone the repo
   ```sh
   git clone https://github.com/arpd/nix-cpp23-template.git
   cd template
   ```

<!-- USAGE EXAMPLES -->
## Usage

- Build the nix package
   ```sh
   nix build
   ```
- Activate the devshell
   ```sh
   nix develop
   ```
   or
   ```sh
   direnv allow
   ```
- Build the example binary
   ```sh
   make
   ```
- Build and run the example unit test
   ```sh
   make test
   ```

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/arpd/nix-cpp23-template.svg?style=for-the-badge
[contributors-url]: https://github.com/arpd/nix-cpp23-template/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/arpd/nix-cpp23-template.svg?style=for-the-badge
[forks-url]: https://github.com/arpd/nix-cpp23-template/network/members
[stars-shield]: https://img.shields.io/github/stars/arpd/nix-cpp23-template.svg?style=for-the-badge
[stars-url]: https://github.com/arpd/nix-cpp23-template/stargazers
[issues-shield]: https://img.shields.io/github/issues/arpd/nix-cpp23-template.svg?style=for-the-badge
[issues-url]: https://github.com/arpd/nix-cpp23-template/issues
[license-shield]: https://img.shields.io/github/license/arpd/nix-cpp23-template.svg?style=for-the-badge
[license-url]: https://github.com/arpd/nix-cpp23-template/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/linkedin_username
[product-screenshot]: images/screenshot.png
[Next.js]: https://img.shields.io/badge/next.js-000000?style=for-the-badge&logo=nextdotjs&logoColor=white
[Next-url]: https://nextjs.org/
[React.js]: https://img.shields.io/badge/React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB
[React-url]: https://reactjs.org/
[Vue.js]: https://img.shields.io/badge/Vue.js-35495E?style=for-the-badge&logo=vuedotjs&logoColor=4FC08D
[Vue-url]: https://vuejs.org/
[Angular.io]: https://img.shields.io/badge/Angular-DD0031?style=for-the-badge&logo=angular&logoColor=white
[Angular-url]: https://angular.io/
[Svelte.dev]: https://img.shields.io/badge/Svelte-4A4A55?style=for-the-badge&logo=svelte&logoColor=FF3E00
[Svelte-url]: https://svelte.dev/
[Laravel.com]: https://img.shields.io/badge/Laravel-FF2D20?style=for-the-badge&logo=laravel&logoColor=white
[Laravel-url]: https://laravel.com
[Bootstrap.com]: https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white
[Bootstrap-url]: https://getbootstrap.com
[JQuery.com]: https://img.shields.io/badge/jQuery-0769AD?style=for-the-badge&logo=jquery&logoColor=white
[JQuery-url]: https://jquery.com 
