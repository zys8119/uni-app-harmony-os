<template>
	<view class="bg-#d8d8d8 h-full abs-content abs-f">
		<scroll-view class="h-full" scroll-y>
			<view class="flex-v p-15px gap-10px">
				<view class="flex-center-start gap-10px bg-#fff lh-30px b-rd-5px p-10px bg-op-50%"
					v-for="(item, index) in list" :key="index">
					<view class="flex-shrink-0 text-#a08b95">{{ item.label }}</view>
					<view class="flex-1 flex justify-end">
						<view class="bg-#fff p-x-15px b-rd-5px mr-15px   flex-center">
							{{ item.value }}
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
const list = ref([
	{ label: '输出端段路次数', value: '0次' },
	{ label: '充电温度保护次数', value: '0次' },
	{ label: '放电温度保护次数', value: '0次' },
	{ label: '历史最高温', value: '0℃' },
	{ label: '历史最低温', value: '0℃' },
	{ label: '历史最高电流', value: '0A' },
	{ label: '当前温度', value: '0℃' },
	{ label: '输出端1过流次数', value: '0次' },
	{ label: '输出端1短路次数', value: '0次' },
	{ label: '输出端1过流次数', value: '0次' },
	{ label: '输出端1短路次数', value: '0次' },
	{ label: '电池剩余容量', value: '0' },
	{ label: '电池容量衰减度', value: '0' },
])
</script>

<style></style>
