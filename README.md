# Buttons Plugin for Rails

This gem integrates [Medium Editor Buttons Plugin](https://github.com/arcs-/medium-button) with Rails asset pipeline.

## Version

The latest version of plugin bundled by this gem is [v1.1.2](https://github.com/arcs-/medium-button)

## Installation

Include **medium-editor-buttons-rails** in your Rails project's Gemfile:

```ruby
gem 'medium-editor'
gem 'medium-editor-buttons-plugin'
```


## Configuration

Include javascript file in **app/assets/javascripts/application.js**:

```javascript
//= require medium-editor
//= require medium-editor-buttons-plugin
```

## Using plugin with Medium Editor

Initialize Medium Editor and add Buttons Plugin inside configuration:

```html
<div class="editable"></div>

<script>
  $(document).ready(function(){
    var editor = new MediumEditor('.editable', {
      toolbar: {
        buttons: ['b', 'h2', 'warning', 'pop']
      },
      extensions: {
          // compact
          'b':  new MediumButton({label:'BOLD', start:'<b>', end:'</b>'}),
          'h2': new MediumButton({label:'h2', start:'<h2>', end:'</h2>'}),

         // expanded
         'warning': new MediumButton({
            label: '<i class="fa fa-exclamation-triangle"></i>',
            start: '<div class="warning">',
            end:   '</div>'
         }),

      // with JavaScript
         'pop': new MediumButton({
            label:'POP',
            action: function(html, mark, parent){
                      alert('hello :)')
                      return html
                    }
          })
      }
    });
  });
</script>
```

## Contributing

1. Fork it ( https://github.com/mwlang/medium-editor-buttons-plugin/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
