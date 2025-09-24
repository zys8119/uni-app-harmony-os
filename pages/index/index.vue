<template>
	<view class="content bg-#d8d8d8 h-full abs-content abs-f flex-v">
		<uniNavBar statusBar title="">
			<template #left>
				<icon type="&#xe66f;" size="26" />
				<view class="iconfont text-25px">
					&#xe61e;
				</view>
			</template>
			<template #default>
				<view class="text-25px flex-center">历史记录</view>
			</template>
		</uniNavBar>
		<scroll-view class="flex-1" scroll-y>
			<view class="flex-v gap-10px  p-15px">
				<view class="flex-center-start gap-10px">
					<view class="flex-shrink-0 bg-#9b9b93 text-#fbad51 flex-center w-50px h-70px b-rd-5px"
						@click="toListOfIndicators('/pages/index/listOfIndicators')">状态:</view>
					<scroll-view class="of-hidden" scroll-x>
						<view class="flex gap-5px h-70px">
							<view v-for="i in 10" :key="i" class="abs-r">
								<image class="w-40px h-70px" src="/static/dianci.png"></image>
								<view class="abs-content flex-center">B7</view>
							</view>
						</view>
					</scroll-view>
				</view>
				<view class="flex-center-start gap-10px bg-#fff lh-40px b-rd-5px p-10px bg-op-50%">
					<view class="flex-shrink-0 text-#dbd25b" @click="toListOfIndicators('/pages/index/history')">电压(V)
					</view>
					<scroll-view class="of-hidden" scroll-x>
						<view class="flex gap-5px">
							<view v-for="i in 10" :key="i" class="abs-r bg-#fff p-x-5px b-rd-5px">
								4.049
							</view>
						</view>
					</scroll-view>
				</view>
				<view class="flex-center-start gap-10px">
					<view class="flex-shrink-0 bg-#9b9b93 text-#fbad51 flex-center w-50px h-70px b-rd-5px">状态:</view>
					<scroll-view class="of-hidden" scroll-x>
						<view class="flex gap-5px h-70px">
							<view v-for="i in 10" :key="i" class="abs-r">
								<image class="w-40px h-70px" src="/static/dianci.png"></image>
								<view class="abs-content flex-center">B7-{{ i }}</view>
							</view>
						</view>
					</scroll-view>
				</view>
				<view class="flex-center-start gap-10px bg-#fff lh-40px b-rd-5px p-10px bg-op-50%">
					<view class="flex-shrink-0 text-#dbd25b">电压(V)</view>
					<scroll-view class="of-hidden" scroll-x>
						<view class="flex gap-5px">
							<view v-for="i in 2" :key="i" class="abs-r bg-#fff p-x-5px b-rd-5px">
								4.049
							</view>
						</view>
					</scroll-view>
				</view>
				<view class="flex-center-start gap-10px bg-#fff lh-40px b-rd-5px p-10px bg-op-50%">
					<view class="flex-shrink-0 text-#a08b95">电池包总电压:</view>
					<view class="flex-1 flex justify-end">
						<view class="bg-#fff p-x-15px b-rd-5px mr-15px   flex-center">
							4.049V
						</view>
					</view>
				</view>
				<view class="flex-center-start gap-10px text-#a08b95">
					<view class="bg-op-50% bg-#fff b-rd-5px p-10px flex-1 flex-v gap-10px lh-40px">
						<view class="flex-center ">总充电时间</view>
						<view class="flex-center b-rd-3px bg-#fff">3小时31分钟</view>
						<view class="flex-center ">充电次数</view>
						<view class="flex-center b-rd-3px bg-#fff">85次</view>
					</view>
					<view class="bg-op-50% bg-#fff b-rd-5px p-10px flex-1 flex-v gap-10px lh-40px">
						<view class="flex-center ">总放电时间</view>
						<view class="flex-center b-rd-3px bg-#fff">0分钟</view>
						<view class="flex-center ">放电次数</view>
						<view class="flex-center b-rd-3px bg-#fff">85次</view>
					</view>
				</view>
				<view class="flex-center-start gap-10px bg-#fff lh-40px b-rd-5px p-10px bg-op-50%">
					<view class="flex-shrink-0 text-#a08b95">串数</view>
					<view class="flex-1 flex justify-end">
						<view class="bg-#fff p-x-15px b-rd-5px mr-15px   flex-center">
							7
						</view>
					</view>
				</view>
				<view class="flex-center-start gap-10px bg-#fff lh-40px b-rd-5px p-10px bg-op-50%">
					<view class="flex-shrink-0 text-#a08b95">UID</view>
					<view class="flex-1 flex justify-end">
						<view class="bg-#fff p-x-15px b-rd-5px mr-15px   flex-center w-100%">
							F3CC82A5665002E0
						</view>
					</view>
				</view>
				<view class="flex-center-start gap-10px bg-#fff lh-40px b-rd-5px p-10px bg-op-50%">
					<view class="flex-shrink-0 text-#a08b95">放电过流次数</view>
					<view class="flex-1 flex justify-end">
						<view class="bg-#fff p-x-15px b-rd-5px mr-15px   flex-center">
							7次
						</view>
					</view>
				</view>
			</view>
		</scroll-view>
	</view>
</template>

<script setup lang="uts">
import {  ref } from "vue";
import { onReady } from '@dcloudio/uni-app'
import uniNavBar from '@/uni_modules/uni-nav-bar/components/uni-nav-bar/uni-nav-bar.vue'
const toListOfIndicators=(url)=>{
	uni.navigateTo({
		url
	})
}
</script>

<style></style>
