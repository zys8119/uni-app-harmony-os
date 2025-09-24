<template>
	<view class="abs-content flex-v abs-f h-full">
		<navBar title="历史记录" claas="z-3"></navBar>
		<view class="abs-r flex-1 z-2">
			<Table :columns="columns" :list="list">
			</Table>
		</view>
	</view>
</template>

<script setup lang="uts">
import {  ref } from "vue";
import { onReady } from '@dcloudio/uni-app'
import Table from '@/components/table.vue'
import navBar from '@/components/navBar.vue'
const columns = ref([
	{ label: '序号', key: 'index',index:true },
	{ label: 'UID', key: 'label' },
	{ label: '时间', key: 'time' },
	{ label: '时间', key: 'time' },
	{ label: '时间', key: 'time' },
	{ label: '时间', key: 'time' },
	{ label: '时间3', key: 'time' },
])
const list = ref([
	{ label: '输出端段路次数', value: '0次', time: '2024-06-10 10:10:10' },
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
	{ label: '电池容量衰减度', value: '0' },
	{ label: '电池容量衰减度', value: '0' },
	{ label: '电池容量衰减度', value: '0' },
	{ label: '电池容量衰减度', value: '0' },
	{ label: '电池容量衰减度', value: '0' },
	{ label: '电池容量衰减度', value: '0' },
	{ label: '电池容量衰减度', value: '0' },
	{ label: '电池容量衰减度', value: '0' },
	{ label: '电池容量衰减度', value: '0' },
	{ label: '电池容量衰减度', value: '0' },
	{ label: '电池容量衰减度', value: '0' },
	{ label: '电池容量衰减度', value: '0' },
	{ label: '电池容量衰减度', value: '0' },
	{ label: '电池容量衰减度', value: '0' },
	{ label: '电池容量衰减度', value: '0' },
	{ label: '电池容量衰减度', value: '0' },
	{ label: '电池容量衰减度', value: '0' },
	{ label: '电池容量衰减度', value: '0' },
	{ label: '电池容量衰减度', value: '0' },
	{ label: '电池容量衰减度', value: '0' },
	{ label: '电池容量衰减度', value: '0' },
	{ label: '电池容量衰减度', value: '0' },
	{ label: '电池容量衰减度', value: '0' },
	{ label: '电池容量衰减度', value: '0' },
	{ label: '电池容量衰减度', value: '0' },
	{ label: '电池容量衰减度', value: '0' },
	{ label: '电池容量衰减度', value: '0' },
	{ label: '电池容量衰减度', value: '0' },
	{ label: '1111111', value: '0' },
])

</script>

<style></style>
