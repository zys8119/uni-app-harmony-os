import { NativeEmbedBuilderOptions, defineNativeEmbed } from "@dcloudio/uni-app-runtime"

interface ButtonBuilderOptions extends NativeEmbedBuilderOptions {
  label: string
}

interface ButtonClickEventDetail {
  text: string
}


@Component
struct ButtonComponent {
  @Prop label: string
  onButtonClick?: Function

  build() {
    Button(this.label)
      .width('100%')
      .height('100%')
      .onClick(() => {
        if (this.onButtonClick) {
          const detail = {
            text: 'test'
          } as ButtonClickEventDetail
          this.onButtonClick({
            detail
          })
        }
      })
  }
}

@Builder
function ButtonBuilder(options: ButtonBuilderOptions) {
  ButtonComponent({
    label: options.label,
    onButtonClick: options?.on?.get('buttonclick')
  })
    .width(options.width)
    .height(options.height)
}

defineNativeEmbed('button', {
  builder: ButtonBuilder
})
