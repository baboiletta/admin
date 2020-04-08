$(document).ready(function() {
  var buttonHTML, fileInputHTML;

  buttonHTML = "<button type=\"button\" class=\"icon attach\" data-trix-attribute=\"x-attach\">Attach Files</button>";


  fileInputHTML = "<input type=\"file\" multiple>";

  $(Trix.config.toolbar.content).find(".button_group.block_tools").append(buttonHTML);

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
});

