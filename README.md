# TabBar Model


| **Device** | **Minimum OS** |
|:---:|:---:|
| **iPhone** | iOS 16 |

## Overview

This sample app shows how to create a model for tab items in a `TabView` to simplify its management, and how to style its tab bar.

There are two tab items in the sample app, `Tab One` and `Tab Two` views. An `enum` called `Tab` with variables `title` and `icon` is declared as a model to assign title and icon values to those tab items' labels' properties. The `Tab` model also serves as a `State` variable to track the selection of tab items of `TabView` by being assigned as its `selection` property.

To style the tab bar, a view modifier called `OpaqueTabBarStyle` is declared. This modifier configures the tab bar by assigning it an opaque background with the blur effect.

