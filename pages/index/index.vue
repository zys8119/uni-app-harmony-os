<template>
	<view class="content">
		<image class="logo" src="/static/logo.png"></image>
		<view>
			<button class="button" @click="openAppProductBtn">
				asdas-{{ options }}
			</button>
		</view>
		<view>
			<embed class="native-button" tag="button" :options="options" @buttonclick="onClick"></embed>
		</view>
	</view>
</template>

<script lang="uts">
export default {
	data() {
		return {
			options:{}
		}
	},
	onShow() {
		console.log(uni.openAppProduct())
	},
	methods: {
		async openAppProductBtn() {
		},
		onClick(e) {
			console.log('onClick', e.detail.text)
			this.options = {
				label: 'world'
			}
		}
	}
}
</script>

<style>
.native-button {
	display: block;
	width: 200px;
	height: 50px;
	margin: 10px auto;
}

.content {
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
}

.logo {
	height: 200rpx;
	width: 200rpx;
	margin-top: 200rpx;
	margin-left: auto;
	margin-right: auto;
	margin-bottom: 50rpx;
}

.text-area {
	display: flex;
	justify-content: center;
}

.title {
	font-size: 36rpx;
	color: #8f8f94;
}
</style>
