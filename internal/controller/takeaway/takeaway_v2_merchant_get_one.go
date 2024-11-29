package takeaway

import (
	"context"
	"github.com/gogf/gf-demo-user/v2/internal/dao"

	"github.com/gogf/gf-demo-user/v2/api/takeaway/v2"
)

func (c *ControllerV2) MerchantGetOne(ctx context.Context, req *v2.MerchantGetOneReq) (res *v2.MerchantGetOneRes, err error) {
	res = &v2.MerchantGetOneRes{}
	err = dao.Merchant.Ctx(ctx).WherePri(req.Id).Scan(&res.Merchant)
	return
}
