<template>
	<view class="bg-#d8d8d8 h-full abs-content abs-f flex-v">
		<scroll-view class="flex-1" scroll>
			<view class="flex">
				<view :class="item.class" v-for="(item, index) in columns" :key="index">
					<view>{{ item.label }}</view>
				</view>
			</view>
		</scroll-view>
		<view class="p-x-15px p-y-10px text-#827072 bg-#e9dddb">212行</view>
	</view>
</template>

<script setup lang="uts">
import {  ref } from "vue";
import { onReady } from '@dcloudio/uni-app'
const columns = ref([
	{ label: '序号', value: '', class:'w-50px' },
	{ label: 'UID', value: '', class:'w-50px' },
	{ label: '时间', value: '', class:'w-50px' },
])
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
