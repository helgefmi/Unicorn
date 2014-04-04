Unicorn
=======

An Elder Scrolls Online addon for addon developers!

What does it do?
----------------

This repository will hopefully contain several reusable UI "widgets", that's easier to work on than the native ZO ones.

The idea is to help separate your UI code from your logic (which is a common practice in most environments).

Example
-------

```
lw = Unicorn.ListView:new(SomeControl, {
    width = 350,
    left = 970,
    top = 40,
})

for i = 1, 4 do
    lw:add_message("|cff0000Hello World")
    lw:add_message("|c00ff00This is line " .. i)
    lw:add_message("|c0000ffLorem ipsum sit amet etc. etc.")
    lw:add_message("")
end

```

ListView
--------

Simple chatbox-like widget (without the input line.)

![Screenshot](http://i.imgur.com/I6hHytU.png)

### Scrolling

- The scrollbar will hide/show automatically when it's (not) needed

- It makes sure you can't scroll below or above the content.

- The scrollbar resizes vertically, based on how much text is visible.

### ListView.new(control, settings)

Creates a new instance of ListView. This will be your handle for adding messages etc.

- `control` = a random precreated control.

- `settings`
    - `slider_texture` (default "/esoui/art/miscellaneous/scrollbox_elevator.dds")
    - `width` (default 400)
    - `height` (default 400)
    - `left` (default 100)
    - `top` (default 100)
    - `line_height` (default 20)

### ListView:update()

Renders the control. It's called automatically when any changes occur (adding messages, resizing etc.)

### ListView:clear()

Clears the lines. Makes the control empty.

### ListView:add_message(message)

Adds a line.

### ListView TODO

- Buffered update()

- Padding

- Make more stuff configurable by extending `settings`.

- Make it possible to do stuff like `list_view:SetHidden(true)` instead of doing `list_view.control:SetHidden(true)`

- More functionality for the handling of lines. We don't want people to manage `list_view.lines` manually, so we need to have some more functionality. E.g. `set_messages(messages)`, `insert_message(index, message)` etc.

- Horizontal scrolling. Or line wrapping. Or both!

- Timestamps? Or should that be handled by caller?


Unicorn TODO
------------

- Improve ListView

- Implement TableView

- Implement InputBox then InputOuputBox (which will consist of both InputBox and ListView).

- When we have InputOutputBox (please dont call it that), implement a lua REPL! With colors and tab completes and all kinds of stuff!

- Also: Lots of other stuff
