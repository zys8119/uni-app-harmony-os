<template>
	<view class="content bg-#d8d8d8 h-full p-15px abs-content abs-f">
		<scroll-view class="h-full" scroll-y>
			<view class="flex-v gap-10px">
				<view class="flex-center-start gap-10px">
					<view class="flex-shrink-0 bg-#9b9b93 text-#fbad51 flex-center w-50px h-70px b-rd-5px">状态:</view>
					<scroll-view class="of-hidden" scroll-x>
						<view class="flex gap-5px h-70px">
							<view v-for="i in 10" :key="i" class="abs-r">
								<image class="w-50px h-70px" src="/static/dianci.png"></image>
								<view class="abs-content flex-center">B7</view>
							</view>
						</view>
					</scroll-view>
				</view>
				<view class="flex-center-start gap-10px">
					<view class="flex-shrink-0 bg-#9b9b93 text-#fbad51 flex-center w-50px h-70px b-rd-5px">状态:</view>
					<scroll-view class="of-hidden" scroll-x>
						<view class="flex gap-5px h-70px">
							<view v-for="i in 10" :key="i" class="abs-r">
								<image class="w-50px h-70px" src="/static/dianci.png"></image>
								<view class="abs-content flex-center">B7</view>
							</view>
						</view>
					</scroll-view>
				</view>
				<view v-for="i in 100">{{ i }}</view>
			</view>
		</scroll-view>
	</view>
</template>

<script setup lang="uts">
import {  ref } from "vue";
import { onReady } from '@dcloudio/uni-app'
const title = ref('888')
onReady(()=>{
})

</script>

<style></style>
