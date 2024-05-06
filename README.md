# Echo Boards

Echo Boards is a cutting-edge sound-responsive keyboard designed to integrate seamlessly with the Whisper API. This innovative tool allows for an interactive typing experience that responds to ambient sound, providing a dynamic and customizable user interface.

## Features

- **Sound-Responsive Interaction**: Echo Boards reacts to sound cues to provide a unique typing experience.
- **Whisper API Integration**: Leverages the power of the Whisper API for accurate sound detection and response.
- **Customizable Settings**: Users can adjust sensitivity, sound types, and response patterns.
- **Real-Time Feedback**: Visual and auditory feedback to enhance typing and user interaction.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

What things you need to install the software and how to install them:

XCode
Whisper API keys


## Installation

Echo Boards can be installed with the Swift Package Manager:

```
https://github.com/echoboards/echoboards.git
```

After installing Echo Boards, make sure to link it to all targets that need it.



## Getting Started

After installing Echo Boards, just make your `KeyboardViewController` inherit ``KeyboardInputViewController`` instead of `UIInputViewController`:

```swift
import KeyboardKit

class KeyboardController: KeyboardInputViewController {}
```

This gives your controller access to new lifecycle functions like `viewWillSetupKeyboard`, observable state like `state.keyboardContext`, services like `services.actionHandler`, and much more.

If you just want to use the default `SystemKeyboard` view, which mimics a native iOS keyboard, you don't have to do anything else. KeyboardKit will set up everything.

To replace or customize the default `SystemKeyboard`, just override `viewWillSetupKeyboard` and call `setup` with a `view` builder:

```swift
class KeyboardViewController: KeyboardInputViewController {

    override func viewWillSetupKeyboard() {
        super.viewWillSetupKeyboard()
        setup { [weak self] controller in // <-- Use [weak self] or [unowned self] if you need self here.
            SystemKeyboard(
                state: controller.state,
                services: controller.services,
                buttonContent: { $0.view },
                buttonView: { $0.view },
                emojiKeyboard: { $0.view },
                toolbar: { _ in MyCustomToolbar() }
            )
        }
    }
}
```

## Usage

To use Echo Boards, simply start typing on your keyboard, and the system will respond to the ambient sounds detected by the Whisper API. You can customize the sound response settings in the application settings menu.


## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.


