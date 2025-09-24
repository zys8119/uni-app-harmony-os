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
            <view @click="closeMenu" class="abs-content abs-f z-100"></view>
            <view class="abs bottom-0px right-0 translate-y-100% z-101">
                <view class="mt-5px  shadow-lg bg-#fff b-rd-5px p-10px m-10px flex-v lh-40px">
                    <view>刷新</view>
                    <view @click="exportExcel">导出数据</view>
                    <view>清空数据</view>
                </view>
            </view>
        </template>
    </uniNavBar>
</template>
<script setup lang="uts">
import * as XLSX from "xlsx";
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
const exportExcel = (data, filename = "数据.xlsx")=> {
    try {
        uni.showLoading({
            title: "正在导出..."
        });
        // 1. 将数据转为 Sheet
        const worksheet = XLSX.utils.json_to_sheet(data);
        const workbook = XLSX.utils.book_new();
        XLSX.utils.book_append_sheet(workbook, worksheet, "Sheet1");
        // 2. 导出二进制
        const excelBuffer = XLSX.write(workbook, {
            bookType: "xlsx",
            type: "array"
        });
        // 3. 保存文件
        const blob = new Blob([excelBuffer], { type: "application/octet-stream" });
        console.log(blob);
    } catch (error) {
        console.log(error.stack);
    }
    uni.hideLoading();
  
}
</script>
<style></style>