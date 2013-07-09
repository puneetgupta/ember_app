# for more details see: http://emberjs.com/guides/views/

RailsEmber.ListsView = Ember.View.extend
  layoutName: 'layout/application',
  templateName: 'category/index'

RailsEmber.UploadFileView = Ember.TextField.extend(
  type: "file"
  attributeBindings: ["name"]
  change: (evt) ->
    self = this
    input = evt.target
    if input.files and input.files[0]
      reader = new FileReader()
      that = this
      reader.onload = (e) ->
        fileToUpload = e.srcElement.result
        person = RailsEmber.Pin.createRecord(
          categoryName: "heyo"
          pins: fileToUpload
        )
        self.get("controller.target").get("store").commit()

      reader.readAsDataURL input.files[0]
)