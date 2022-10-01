# Harry Potter App
Harry Potter App Flutter



[![style: very good analysis](https://img.shields.io/badge/style-very_good_analysis-B22C89.svg)](https://pub.dev/packages/very_good_analysis)
[![pub package](https://img.shields.io/pub/v/get.svg?label=get&color=blue)](https://pub.dev/packages/get)

## Folder Structure - folder by screens

The point of a structure is to make it easy to find stuff & make changes as new requirements arise. A good structure does this for both experienced and new developers. 

- `core`:

   *Contains App Services, Api Calls, Localization etc., All API, GPS data, Cache etc are fetched from here*
  - `config`-  *Contains all the configuration files for the app.*
  - `localization`- *Contains all the localization files for the app.*
  - `routes` - *Contains all the routes for the app.*
  - `controllers`- *All the gloablly used controllers for the app.*
  - `api`- *Contains all the API functions.*
  - `theme`- *Contains the global app theme data.*

- `gen`:
  *Contains Asset genrated bundle*

- `meta`:

  *Contains pages, widgets, utils etc that are common for multiple features. For example: a Custom Loading indicator, Error Pages, Get location function etc*
  - `widgets` - *Contains gloablly used widgets for the app.*
  - `utils` - *Contains gloablly used utils for the app.*
  - `models` - *Model classes for the app.*

- `screens`:

  *UI Screens having a seperate controller assigned to each of them*
  - `screen A` - *Can be any screen Ex. `home_screen`*
    - `components` - *Contains all the components for the `screen A`.*
    - `controllers` - *Contains all the controllers for the `screen A`.*
    - `views` - *Contains all the views for the `screen A`, Ex. A page is having multiple tabs*
      - `tab A` - *Can be any tab Ex. `home_tab`*
        - `components` - *Contains all the components for the `tab A`.*
        - `controllers` - *Contains all the controllers for the `tab A`.*

## Flutter App Coding Guidelines:

- Using stable version of Flutter `3.3.2`.
- Use `lower_case_file_names.dart`.
- Minimize use of stateful widgets.
- Use `const` for all constants.
- Minimize use of `setState()`.
- Use Named Routes for all the screens.
- Use line length `120` for dart files.
- ![image](https://user-images.githubusercontent.com/90178033/172284528-a9552834-4875-487d-8483-637b376b6a2f.png)




## CI/CD:
Planning on Using Github Actions to automate the build process.
On Pushing to master branch of Github, the android build will be automatically created and added as a release.


## UI Designs:
The UI is designed in figma and Adobe XD


