$(document).ready(function() {

  document.addEventListener('trix-attachment-add', function (event) {
    console.log('qweee');
    var file = event.attachment.file;
    if (file) {
      var upload = new window.ActiveStorage.DirectUpload(file, '/rails/active_storage/direct_uploads', window);
      upload.create((error, attributes) => {
        if (error) {
          return false;
        } else {
          return event.attachment.setAttributes({
            url: `/rails/active_storage/blobs/${attributes.signed_id}/${attributes.filename}`,
            href: `/rails/active_storage/blobs/${attributes.signed_id}/${attributes.filename}`,
          });
        }
      });
    }
  })

  document.addEventListener('trix-initialize', function(e) {
    trix = e.target;
    console.log(e);
    toolBar = trix.toolbarElement;

    // Creation of the button
    button = document.createElement("button");
    button.setAttribute("type", "button");
    button.setAttribute("class", "attach");
    button.setAttribute("data-trix-action", "x-attach");
    button.setAttribute("title", "Attach a file");
    button.setAttribute("tabindex", "-1");
    button.innerText = "Attach a file";

    // Attachment of the button to the toolBar
    uploadButton = toolBar.querySelector('.button_group.block_tools').appendChild(button);

    // When the button is clicked
    uploadButton.addEventListener('click', function() {
        // Create a temporary file input
        fileInput = document.createElement("input");
        fileInput.setAttribute("type", "file");
        fileInput.setAttribute("multiple", "");
        // Add listener on change for this file input
        fileInput.addEventListener("change", function(event) {
                var file, _i, _len, _ref, _results;
                _ref = this.files;
                _results = [];
                // Getting files
                for (_i = 0, _len = _ref.length; _i < _len; _i++) {
                    file = _ref[_i];
                    // pushing them to Trix
                    _results.push(trix.editor.insertFile(file));
                }
                return _results;
            }),
            // Then virtually click on it
            fileInput.click()
    });
    return;
  });
  document.addEventListener('trix-attachment-remove', function(e) {
    // file = e.attachment;
    // Here you could send a request to your app to delete the file
    window.onbeforeunload = function() {};
  });
});
