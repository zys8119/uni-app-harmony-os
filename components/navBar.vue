<template>
    <uniNavBar statusBar class="abs-r">
        <template #left>
            <view class="iconfont text-25px" @click="back">
                &#xe61e;
            </view>
        </template>
        <template #default>
            <view class="text-20px flex-center">{{ title }}</view>
        </template>
        <template #right>
            <view class="abs-r flex-center">
                <view class="iconfont text-25px" @click="more">
                    &#xe60e;
                </view>
            </view>
        </template>
        <template #footer v-if="showMenu">
            <view @click="closeMenu" class="abs-content abs-f z-2"></view>
            <view class="abs bottom-0px right-0 translate-y-100% z-100">
                <view class="mt-5px  shadow-lg bg-#fff b-rd-5px p-10px m-10px flex-v lh-40px">
                    <view>刷新</view>
                    <view>导出数据</view>
                    <view>清空数据</view>
                </view>
            </view>
        </template>
    </uniNavBar>
</template>
<script setup lang="uts">
import uniNavBar from '@/uni_modules/uni-nav-bar/components/uni-nav-bar/uni-nav-bar.vue'
import { ref } from "vue";
const props = defineProps<{
    title: any
}>()
const showMenu = ref(false)
const more = ()=>{
	showMenu.value = true
}
const closeMenu = ()=>{
	showMenu.value = false
}
const back=()=>{
	uni.navigateBack()
}
</script>
<style></style>