(global["webpackJsonp"]=global["webpackJsonp"]||[]).push([["pages/caipinOrder/list"],{"5ecb":function(e,n,t){"use strict";var r=t("76b7"),i=t.n(r);i.a},"6dd5":function(e,n,t){"use strict";t.d(n,"b",(function(){return i})),t.d(n,"c",(function(){return a})),t.d(n,"a",(function(){return r}));var r={mescrollUni:function(){return Promise.all([t.e("common/vendor"),t.e("components/mescroll-uni/mescroll-uni")]).then(t.bind(null,"aa08"))},uniPopup:function(){return t.e("components/uni-popup/uni-popup").then(t.bind(null,"7c44"))}},i=function(){var e=this,n=e.$createElement;e._self._c},a=[]},"76b7":function(e,n,t){},"843e":function(e,n,t){"use strict";(function(e){Object.defineProperty(n,"__esModule",{value:!0}),n.default=void 0;var r=i(t("a34a"));function i(e){return e&&e.__esModule?e:{default:e}}function a(e,n,t,r,i,a,c){try{var u=e[a](c),s=u.value}catch(o){return void t(o)}u.done?n(s):Promise.resolve(s).then(r,i)}function c(e){return function(){var n=this,t=arguments;return new Promise((function(r,i){var c=e.apply(n,t);function u(e){a(c,r,i,u,s,"next",e)}function s(e){a(c,r,i,u,s,"throw",e)}u(void 0)}))}}var u={data:function(){return{navlist:[],currentIndex:0,pages:1,list:[],mescroll:null,downOption:{auto:!1},upOption:{page:{},noMoreSize:3,textNoMore:"~ 没有更多了 ~"},hasNext:!0,caipinLiuyanText:"",user:"",caipinId:null,caipinCommentbackText:null,caipinCommentbackPingfenNumber:0}},onShow:function(){var n=this;return c(r.default.mark((function t(){var i,a,c,u;return r.default.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return i=e.getStorageSync("nowTable"),t.next=3,n.$api.session(i);case 3:return a=t.sent,n.user=a.data,n.hasNext=!0,c={page:1,limit:100,dicCode:"caipin_order_types"},t.next=9,n.$api.page("dictionary",c);case 9:u=t.sent,n.navlist=u.data.list,n.mescroll&&n.mescroll.resetUpScroll();case 12:case"end":return t.stop()}}),t)})))()},methods:{navselect:function(e){this.currentIndex=e,this.caipinOrderTypes=e,this.hasNext=!0,this.mescroll&&this.mescroll.resetUpScroll()},mescrollInit:function(e){this.mescroll=e},downCallback:function(e){this.hasNext=!0,e.resetUpScroll()},upCallback:function(e){var n=this;return c(r.default.mark((function t(){var i,a;return r.default.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return i={page:e.num,limit:e.size},n.caipinOrderTypes&&(i["caipinOrderTypes"]=n.caipinOrderTypes),t.next=4,n.$api.page("caipinOrder",i);case 4:a=t.sent,1==e.num&&(n.list=[]),n.list=n.list.concat(a.data.list),0==a.data.list.length&&(n.hasNext=!1),e.endSuccess(e.size,n.hasNext);case 9:case"end":return t.stop()}}),t)})))()},refund:function(n){var t=this;return c(r.default.mark((function i(){var a;return r.default.wrap((function(i){while(1)switch(i.prev=i.next){case 0:a=t,e.showModal({title:"提示",content:"是否确认退款",success:function(){var e=c(r.default.mark((function e(t){var i;return r.default.wrap((function(e){while(1)switch(e.prev=e.next){case 0:if(!t.confirm){e.next=7;break}return i=[{key:"id",val:n.id}],e.next=4,a.$api.requestCondition("caipinOrder","refund",i);case 4:e.sent,a.$utils.msg("退款成功"),a.mescroll&&a.mescroll.resetUpScroll();case 7:case"end":return e.stop()}}),e)})));function t(n){return e.apply(this,arguments)}return t}()});case 2:case"end":return i.stop()}}),i)})))()},deliver:function(n){var t=this;return c(r.default.mark((function n(){var i;return r.default.wrap((function(n){while(1)switch(n.prev=n.next){case 0:i=t,e.showModal({title:"提示",content:"是否确认发货",success:function(){var e=c(r.default.mark((function e(n){var t;return r.default.wrap((function(e){while(1)switch(e.prev=e.next){case 0:if(!n.confirm){e.next=7;break}return t=[{key:"id",val:i.deliverId}],e.next=4,i.$api.requestCondition("caipinOrder","deliver",t);case 4:e.sent,i.$utils.msg("成功发货"),i.mescroll&&i.mescroll.resetUpScroll();case 7:case"end":return e.stop()}}),e)})));function n(n){return e.apply(this,arguments)}return n}()});case 2:case"end":return n.stop()}}),n)})))()},receiving:function(n){var t=this;return c(r.default.mark((function i(){var a;return r.default.wrap((function(i){while(1)switch(i.prev=i.next){case 0:a=t,e.showModal({title:"提示",content:"是否确认要取餐吗？",success:function(){var e=c(r.default.mark((function e(t){var i;return r.default.wrap((function(e){while(1)switch(e.prev=e.next){case 0:if(!t.confirm){e.next=7;break}return i=[{key:"id",val:n}],e.next=4,a.$api.requestCondition("caipinOrder","receiving",i);case 4:e.sent,a.$utils.msg("操作成功"),a.mescroll&&a.mescroll.resetUpScroll();case 7:case"end":return e.stop()}}),e)})));function t(n){return e.apply(this,arguments)}return t}()});case 2:case"end":return i.stop()}}),i)})))()},commentback:function(e){this.caipinId=null,this.caipinId=e,this.$refs.popup.open()},onFinishTap:function(){var e=this;return c(r.default.mark((function n(){var t,i;return r.default.wrap((function(n){while(1)switch(n.prev=n.next){case 0:if(t=e,t.caipinCommentbackText){n.next=4;break}return t.$utils.msg("请填写评价内容"),n.abrupt("return");case 4:return i=[{key:"id",val:t.caipinId},{key:"commentbackText",val:t.caipinCommentbackText}],n.next=7,t.$api.requestCondition("caipinOrder","commentback",i);case 7:t.$utils.msg("评论成功"),t.$refs.popup.close(),t.mescroll&&t.mescroll.resetUpScroll();case 10:case"end":return n.stop()}}),n)})))()},onCloseWinTap:function(){this.$refs.popup.close()}}};n.default=u}).call(this,t("543d")["default"])},"893d":function(e,n,t){"use strict";t.r(n);var r=t("6dd5"),i=t("d18d");for(var a in i)"default"!==a&&function(e){t.d(n,e,(function(){return i[e]}))}(a);t("5ecb");var c,u=t("f0c5"),s=Object(u["a"])(i["default"],r["b"],r["c"],!1,null,null,null,!1,r["a"],c);n["default"]=s.exports},d18d:function(e,n,t){"use strict";t.r(n);var r=t("843e"),i=t.n(r);for(var a in r)"default"!==a&&function(e){t.d(n,e,(function(){return r[e]}))}(a);n["default"]=i.a},d205:function(e,n,t){"use strict";(function(e){t("48e8");r(t("66fd"));var n=r(t("893d"));function r(e){return e&&e.__esModule?e:{default:e}}wx.__webpack_require_UNI_MP_PLUGIN__=t,e(n.default)}).call(this,t("543d")["createPage"])}},[["d205","common/runtime","common/vendor"]]]);