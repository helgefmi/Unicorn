Unicorn
=======

An Elder Scrolls Online addon for addon developers!

What does it do?
----------------

This repository will hopefully contain several reusable UI "widgets". Right now it only contains one.

The idea is to make something more useful than the ZO controls, which are too "low level" to work with without cluttering your code and mixing UI code with your logic.

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

Simple widget for listing lines of text w/scrolling. Based off of techniques used in [Zgoo](http://www.esoui.com/downloads/info24-Zgoo.html).

![Screenshot](http://i.imgur.com/u7VoyAO.png)

### Scrolling

- The scrollbar will hide/show automatically when it's (not) needed

- It makes sure you can't scroll below or above the content.

- The scrollbar resizes vertically, based on how much text is visible.

- It fully works with resizing the main control. The scrollbare will resize/hide/show correctly in all cases. Unless there's bugs. Then it's probably not in all cases.

### ListView.new(control, settings)

Creates a new instance of ListView. This will be your handle for adding messages etc.

- `control` = a random pre-created control.

- `settings`
    - `slider_texture` (default "/esoui/art/miscellaneous/scrollbox_elevator.dds")
    - `width` (default 400)
    - `height` (default 400)
    - `left` (default 100)
    - `top` (default 100)
    - `line_height` (default 20)
    - `title`

### ListView:update()

Renders the control. It's called automatically every 0.1 second.

### ListView:clear()

Clears the lines. Makes the control empty.

### ListView:add_message(message)

Adds a line.

### ListView TODO

- More functionality for the handling of lines. We don't want people to manage `list_view.lines` manually, so we need to have some more functionality. E.g. `set_messages(messages)`, `insert_message(index, message)` etc.

- Horizontal scrolling. Or line wrapping. Or both!

- Timestamps? Or should that be handled by caller?


Unicorn TODO
------------

- Actually make an effort. I have to say that UI programming is not my forte. I'd love it if someone would contribute; that would stir up interest, I think ;-).

- Make a logical hierarchy of "widgets"; e.g. start off with a window (title + scrolling + close button), then reuse it in other widgets.

- Widgets that I want ASAP:
    - Table
    - Chat-type box (with possibilities for input)
