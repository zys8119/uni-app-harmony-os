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
import * as XLSX from 'xlsx';
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
 const data = [
	{ "姓名": "张三", "年龄": 25, "城市": "北京" },
	{ "姓名": "李四", "年龄": 30, "城市": "上海" }
];
async function exportExcel() {
    try {
		uni.showLoading({
			title:"正在导出中.."
		})
        const workbook = XLSX.utils.book_new(); // 创建新的工作簿
        const worksheet = XLSX.utils.json_to_sheet(data); // 将数据转换为工作表
        XLSX.utils.book_append_sheet(workbook, worksheet, "Sheet1"); // 将工作表添加到工作簿

        const base64 = XLSX.write(workbook, { bookType: 'xlsx', type: 'base64' }); // 将工作簿写入为数组格式
        // const fileUrl = `data:application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;base64,${base64}`
        // console.log(fileUrl)
        const filename = `${Date.now()}.xlsx`
		const dir = plus.io.convertLocalFileSystemURL("_doc/")
        const filePath = `${dir}${filename}`;
        console.log("dir:",dir)
        console.log("filePath:",filePath)
		await new Promise<void>(r=>{
			uni.getFileSystemManager().access({
				path:dir,
				success(res){
					// 目录已存在
					console.log(res,1)
				},
				fail(res){
					// 目录不存在
					console.log(res,2)
					// 递归创建文件
					uni.getFileSystemManager().mkdirSync(dir, true)
				},
				complete(){
					// 结束文件存在判断
					r()
				}
			})
		})
		console.log("目录已创建")
		// 写入临时文件
        uni.getFileSystemManager().writeFileSync(filePath, base64, 'base64');
        console.log("临时文件写入成功")
		// 保存文件
		const saveUrl = uni.getFileSystemManager().saveFileSync(filePath)
		console.log(saveUrl)
		uni.hideLoading()
		uni.showToast({
			title:`文件保存在:${saveUrl}`	
		})
		console.log("正在打开文件")
		uni.getFileSystemManager().openSync({
			filePath:saveUrl,
			flag:'r'
		})
		console.log("文件打开成功")
		// uni.openDocument({
		// 	filePath:saveUrl,
		// 	fileType:'xlsx',
		// 	success(){
		// 		console.log("文件打开成功")
		// 	},
		// 	fail(err){
		// 		console.log("文件打开失败:",err)
		// 	}
		// })
		
    } catch (error) {
         console.log(error,333)
		 uni.hideLoading()
		 uni.hideToast()
    }
	
}
</script>
<style></style>