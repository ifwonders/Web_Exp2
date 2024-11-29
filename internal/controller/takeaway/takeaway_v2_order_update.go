package takeaway

import (
	"context"
	"github.com/gogf/gf-demo-user/v2/internal/dao"
	"github.com/gogf/gf-demo-user/v2/internal/model/do"
	"github.com/gogf/gf/v2/os/gtime"

	"github.com/gogf/gf-demo-user/v2/api/takeaway/v2"
)

func (c *ControllerV2) OrderUpdate(ctx context.Context, req *v2.OrderUpdateReq) (res *v2.OrderUpdateRes, err error) {
	_, err = dao.Order.Ctx(ctx).Data(do.Order{
		CustomerId:  req.CustomerId,
		MerchantId:  req.MerchantId,
		OrderStatus: req.OrderStatus,
		TotalPrice:  req.TotalPrice,
		UpdateTime:  gtime.Now(),
	}).WherePri(req.Id).Update()
	return
}
