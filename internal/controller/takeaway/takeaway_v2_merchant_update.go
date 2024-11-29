package takeaway

import (
	"context"
	"github.com/gogf/gf-demo-user/v2/internal/dao"
	"github.com/gogf/gf-demo-user/v2/internal/model/do"
	"github.com/gogf/gf/v2/os/gtime"

	"github.com/gogf/gf-demo-user/v2/api/takeaway/v2"
)

func (c *ControllerV2) MerchantUpdate(ctx context.Context, req *v2.MerchantUpdateReq) (res *v2.MerchantUpdateRes, err error) {
	_, err = dao.Merchant.Ctx(ctx).Data(do.Merchant{
		Name:       req.Name,
		Address:    req.Address,
		Mobile:     req.Mobile,
		UpdateTime: gtime.Now(),
	}).WherePri(req.Id).Update()
	return
}
