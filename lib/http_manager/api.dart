import 'package:flutter_app/http_manager/api_service.dart';
import 'package:flutter_app/http_manager/http_manager.dart';
import 'package:flutter_app/http_manager/http_util.dart';
import 'package:flutter_app/http_manager/response_data.dart';
import 'package:flutter_app/utils/user_config.dart';

Future<ResponseData> homeData() async {
  return await HttpManager.get(URL_HOME_NEW, params: _timestampParams());
}

Future<ResponseData> sortData(Map<String, dynamic> params) async {
  params.addAll(_timestampParams());
  return await HttpManager.get(URL_SORT_NEW, params: params);
}

Future<ResponseData> sortListData(Map<String, dynamic> params) async {
  params.addAll(_timestampParams());
  return await HttpManager.get(URL_SORT_LIST_NEW, params: params);
}

Future<ResponseData> kingKongData(Map<String, dynamic> params) async {
  return await HttpManager.get(URL_KING_KONG, params: params);
}

///新品
Future<ResponseData> kingKongNewItemData() async {
  return await HttpManager.get(ORDER_NEW_ITEM, params: _timestampParams());
}

Future<ResponseData> kingKongDataNoId(Map<String, dynamic> params) async {
  return await HttpManager.get(URL_KING_KONG_NO_ID, params: _getParams());
}

Future<ResponseData> getUserInfoItems() async {
  return await HttpManager.get(USER_INFO_ITEMS, params: _getParams());
}

Future<ResponseData> getUserInfo() async {
  return await HttpManager.get(USER_INFO, params: _getParams());
}

///订单列表
Future<ResponseData> getOrderList(Map<String, dynamic> params) async {
  params.addAll(_getParams());
  return await HttpManager.get(ORDER_LIST, params: params);
}

///删除订单
Future<ResponseData> deleteOrder(Map<String, dynamic> params) async {
  params.addAll(_getParams());
  return await HttpManager.get(DELETE_ORDER, params: params);
}

///用户账号相关
Future<ResponseData> getUserAlias() async {
  return await HttpManager.get(USER_ALIASINFO, params: _getParams());
}

///周六一起拼
Future<ResponseData> getPinCategoryList() async {
  return await HttpManager.get(PIN_GROUP, params: _getParams());
}

///周六一起拼数据列表
Future<ResponseData> getPinDataList(
    Map<String, dynamic> params, bool showProgress) async {
  params.addAll(_getParams());
  return await HttpManager.get(PIN_GROUP_LIST,
      params: params, showProgress: showProgress);
}

///地址列表
Future<ResponseData> getLocationList() async {
  return await HttpManager.get(LOCATION_LIST, params: _getParams());
}

///删除地址
Future<ResponseData> deleteAddress(Map<String, dynamic> params) async {
  params.addAll(_getParams());
  return await HttpManager.get(DELETE_ASSRESS, params: params);
}

///省份
Future<ResponseData> getProvenceList(Map<String, dynamic> params) async {
  params.addAll(_getParams());
  return await HttpManager.get(PROVINCE_LIST, params: params);
}

///市
Future<ResponseData> getCityList(Map<String, dynamic> params) async {
  params.addAll(_getParams());
  return await HttpManager.get(CITY_LIST, params: params);
}

///区县
Future<ResponseData> getDisList(Map<String, dynamic> params) async {
  params.addAll(_getParams());
  return await HttpManager.get(DIS_LIST, params: params);
}

///街道
Future<ResponseData> getTown(Map<String, dynamic> params) async {
  params.addAll(_getParams());
  return await HttpManager.get(TOWN_LIST, params: params);
}

///添加地址
Future<ResponseData> addAddress(Map<String, dynamic> params) async {
  params.addAll(_getParams());
  return await HttpManager.post(ADD_ADDRESS, params: params);
}

///二维码
Future<ResponseData> qrCode() async {
  return await HttpManager.post(QR_CODE, params: _getParams());
}

///个人信息二维码生成（邀请）
Future<ResponseData> getUserSpmcInfo() async {
  return await HttpManager.post(GET_USER_SPMCINFO, params: _getParams());
}

///热销好物
Future<ResponseData> rewardRcmd(Map<String, dynamic> params) async {
  params.addAll(_getParams());
  return await HttpManager.post(REWARD_RCMD, params: params);
}

///红包
Future<ResponseData> redPacket(Map<String, dynamic> params) async {
  params.addAll(_getParams());
  return await HttpManager.post(RED_PACKET, params: params);
}

///优惠券
Future<ResponseData> couponList(Map<String, dynamic> params) async {
  params.addAll(_getParams());
  return await HttpManager.get(COUPON_LIST, params: params);
}

///商品详情
Future<ResponseData> goodDetail(Map<String, dynamic> params) async {
  return await HttpManager.get(GOOD_DETAIL, params: params);
}

///购物车
Future<ResponseData> shoppingCart() async {
  return await HttpManager.post(SHOPPING_CART, params: _getParams());
}

///购物车 全选/不选
Future<ResponseData> shoppingCartCheck(Map<String, dynamic> params) async {
  params.addAll(_getParams());
  return await HttpManager.post(SHOPPING_CART_CHECK, params: params);
}

///购物车 选/不选
Future<ResponseData> shoppingCartCheckOne(Map<String, dynamic> params) async {
  params.addAll(_getParams());
  return await HttpManager.get(SHOPPING_CART_CHECK_ONE, params: params);
}

///购物车 选购数量
Future<ResponseData> shoppingCartCheckNum(Map<String, dynamic> params) async {
  params.addAll(_getParams());
  return await HttpManager.get(SHOPPING_CART_CHECK_NUM, params: params);
}

///购物车 删除商品
Future<ResponseData> deleteCart(Map<String, dynamic> params) async {
  params.addAll(_getParams());
  return await HttpManager.post(DELETE_CART, params: params);
}

///热销榜/标题
Future<ResponseData> hotListCat(Map<String, dynamic> params) async {
  params.addAll(_timestampParams());
  return await HttpManager.get(HOT_LIST_CAT, params: params);
}

///热销榜/条目
Future<ResponseData> hotList(
    Map<String, dynamic> params, bool showProgress) async {
  params.addAll(_getParams());
  return await HttpManager.post(HOT_LIST_LIST,
      params: params, showProgress: showProgress);
}

///热销榜/条目
Future<ResponseData> submitOrderInfo() async {
  return await HttpManager.get(SUBMIT_ORDER_INFO, params: _timestampParams());
}

///值得买
Future<ResponseData> topicData(Map<String, dynamic> params) async {
  return await HttpManager.post(TOPPIC, params: params);
}

///评论
Future<ResponseData> commentListData(Map<String, dynamic> params) async {
  params.addAll(_getParams());
  return await HttpManager.post(COMMENT_LIST, params: params);
}

///积分中心
Future<ResponseData> pointCenter() async {
  return await HttpManager.post(POINT_CENTER, params: _getParams());
}

///会员俱乐部
Future<ResponseData> vipCenter() async {
  return await HttpManager.post(VIP_CENTER, params: _getParams());
}

///加入购物车
Future<ResponseData> addCart(Map<String, dynamic> params) async {
  params.addAll(_getParams());
  return await HttpManager.get(ADD_CART, params: params);
}

///订单确认界面
Future<ResponseData> orderInit(Map<String, dynamic> postParams) async {
  return await HttpManager.post(ORDER_INIT,
      postParams: postParams, header: HttpUtil.getHeader());
}

///检查登录
Future<ResponseData> checkLogin() async {
  return await HttpManager.get(CHECK_LOGIN, params: _timestampParams());
}

///获取用户手机号
Future<ResponseData> userMobile() async {
  return await HttpManager.post(USER_MOBILE, params: _getParams());
}

///反馈类型
Future<ResponseData> feedbackType() async {
  return await HttpManager.post(FEEDBACK_TYPE, params: _getParams());
}

///反馈提交
Future<ResponseData> feedbackSubmit(Map<String, dynamic> params) async {
  return await HttpManager.post(FEEDBACK_SUBMIT, params: params);
}

///模糊搜索
Future<ResponseData> searchTips(Map<String, dynamic> params) async {
  return await HttpManager.post(SEARCH_TIPS, params: params);
}

///搜索关键字
Future<ResponseData> searchSearch(Map<String, dynamic> params,
    {bool showProgress}) async {
  params.addAll(_getParams());
  return await HttpManager.post(SEARCH_SEARCH,
      params: params, showProgress: showProgress);
}

///搜索初始化
Future<ResponseData> searchInit() async {
  return await HttpManager.post(SEARCH_INIT, params: _getParams());
}

///值得买列表
Future<ResponseData> findRecAuto(Map<String, dynamic> params) async {
  return await HttpManager.get(FIND_REC_AUTO, params: params);
}

///值得买头部nav
Future<ResponseData> knowNavwap() async {
  return await HttpManager.get(KNOW_NAVWAP);
}

///好评率
Future<ResponseData> commentPraiseApi(Map<String, dynamic> params) async {
  return await HttpManager.post(COMMENT_PRAISE, params: params);
}

///好评率
Future<ResponseData> commentTagsApi(Map<String, dynamic> params) async {
  return await HttpManager.get(COMMENT_TAGS, params: params);
}

///商品详情
Future<ResponseData> goodDetailApi(Map<String, dynamic> params) async {
  return await HttpManager.get(GOOD_DETAIL, params: params);
}

///商品详情下半部分
Future<ResponseData> goodDetailDownApi(Map<String, dynamic> params) async {
  return await HttpManager.post(GOOD_DETAIL_DOWN, params: params);
}

//////商品详情推荐
Future<ResponseData> wapitemRcmdApi(Map<String, dynamic> params) async {
  return await HttpManager.post(WAPITEM_RCMD, params: params);
}

///配送信息
Future<ResponseData> wapitemDelivery(Map<String, dynamic> params) async {
  params.addAll(_getParams());
  return await HttpManager.post(WAPITEM_DELIVERY, params: params);
}

///购物车换购列表
Future<ResponseData> getCarts(Map<String, dynamic> params) async {
  params.addAll(_getParams());
  return await HttpManager.post(GET_CARTS);
}

///购物车换购
Future<ResponseData> getCartsSubmit(Map<String, dynamic> postParams) async {
  return await HttpManager.post(GET_CARTS_SUBMIT, postParams: postParams);
}

///清除无效商品
Future<ResponseData> clearInvalidItem(Map<String, dynamic> params) async {
  params.addAll(_getParams());
  return await HttpManager.post(CLEAR_INVALID_ITEMS, params: params);
}

///check-cart
Future<ResponseData> checkBeforeInit(Map<String, dynamic> postParams) async {
  return await HttpManager.post(CHECK_BEFORE_INIT,
      params: _getParams(),
      postParams: postParams,
      header: HttpUtil.getHeader());
}

///手机号状态
Future<ResponseData> phoneStatus() async {
  return await HttpManager.post(PHONE_STATUS, params: _getParams());
}

///检查更新
///_api_key:  5fd74f41bc1842bb97b3f62859937b34
///appKey:
///buildVersion
Future<ResponseData> checkVersion(Map<String, dynamic> params) async {
  return await HttpManager.post(CHECK_VERSION,
      params: params, showProgress: true);
}

///首页弹窗
Future<ResponseData> newUserGift() async {
  return await HttpManager.post(NEW_USER_GIFT, params: _getParams());
}

///首页弹窗
Future<ResponseData> ucenterInfo() async {
  return await HttpManager.get(UCENTER_INFO, params: _getParams());
}

///感兴趣分类
Future<ResponseData> interestCategory(Map<String, dynamic> params) async {
  return await HttpManager.get(INTEREST_CATEGORY, params: params);
}

///提交感兴趣分类
Future<ResponseData> interestCategoryUpsert({dynamic postData}) async {
  return await HttpManager.post(INTEREST_CATEGORY_UPSERT,
      params: _getParams(), postData: postData);
}

///保存个人信息
Future<ResponseData> saveUserInfo(Map<String, dynamic> params) async {
  params.addAll(_getParams());
  return await HttpManager.post(SAVE_USER_INFO, params: params);
}

///我的尺寸
Future<ResponseData> mineSize() async {
  return await HttpManager.post(MINE_SIZE, params: _getParams());
}

///添加尺寸
Future<ResponseData> addSize(Map<String, dynamic> params) async {
  return await HttpManager.post(ADD_SIZE, params: params);
}

///查询尺寸
Future<ResponseData> querySizeId(Map<String, dynamic> params) async {
  params.addAll(_getParams());
  return await HttpManager.post(QUERY_SIZE_ID,
      params: params, showProgress: true);
}

///积分推荐商品
Future<ResponseData> pointsRcmd() async {
  return await HttpManager.post(POINTS_RCMD, params: _getParams());
}

_getParams() => {'csrf_token': csrf_token};

_timestampParams() => {
      "csrf_token": csrf_token,
      "__timestamp": "${DateTime.now().millisecondsSinceEpoch}"
    };
