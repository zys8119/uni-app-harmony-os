<template>
    <view>
        <view class="bg-#d8d8d8 h-full abs-content abs-f flex-v">
            <scroll-view class="flex-1 of-hidden" scroll-y scroll-x :scroll-left="scrollLeft" @scroll="onScroll">
                <view class="flex">
                    <view class="flex-shrink-0 flex-v" v-for="(item, index) in columns" :key="index">
                        <view class="p-10px  text-#fff bg-#939b90 flex-center">{{ item.label }}</view>
                        <view class="p-10px flex-center" :class="{
                            'bg-#8de1e1': index2 % 2 === 0,
                        }" v-for="(row, index2) in list" :key="index2">
                            <view class="flex-shrink-0 h-20px flex-center of-hidden">
								<slot>
									<slot :name="item.key">{{ item.index ? index2 +
									1 :
									row[item.key] }}</slot>
								</slot>
							</view>
                        </view>
                    </view>
                </view>
            </scroll-view>
            <view class="p-x-15px p-y-10px text-#827072 bg-#e9dddb">{{ list.length }}行</view>
        </view>
        <view class="bg-#d8d8d8 h-38px abs-content abs-f flex-v z-100">
            <scroll-view class="flex-1 of-hidden" scroll-y scroll-x :scroll-left="scrollLeft" @scroll="onScroll"
                :show-scrollbar="false">
                <view class="flex">
                    <view class="flex-shrink-0 flex-v" v-for="(item, index) in columns" :key="index">
                        <view class="p-10px  text-#fff bg-#939b90 flex-center">{{ item.label }}</view>
                        <view class="p-10px flex-center" :class="{
                            'bg-#8de1e1': index2 % 2 === 0,
                        }" v-for="(row, index2) in list" :key="index2">
                            <view class="flex-shrink-0 h-20px flex-center of-hidden">
								<slot>
									<slot :name="item.key">{{ item.index ? index2 +
									1 :
									row[item.key] }}</slot>
								</slot>
							</view>
                        </view>
                    </view>
                </view>
            </scroll-view>
        </view>
    </view>
</template>
<script setup lang="uts">
import {  defineProps,ref } from "vue";
const props = defineProps<{
	columns: Array<{
			label:string
			key:string
			index?:boolean
		}>,
	list: Array<any>
}>()
const scrollLeft = ref(0)
const onScroll = (e) => {
	scrollLeft.value = e.detail.scrollLeft
}
</script>
<style></style>