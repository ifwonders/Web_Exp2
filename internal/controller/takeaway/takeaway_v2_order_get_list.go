package takeaway

import (
	"context"
	"github.com/gogf/gf-demo-user/v2/internal/dao"
	"github.com/gogf/gf-demo-user/v2/internal/model/do"

	"github.com/gogf/gf-demo-user/v2/api/takeaway/v2"
)

func (c *ControllerV2) OrderGetList(ctx context.Context, req *v2.OrderGetListReq) (res *v2.OrderGetListRes, err error) {
	res = &v2.OrderGetListRes{}
	err = dao.Order.Ctx(ctx).Where(do.Order{
		CustomerId: req.CustomerId,
		MerchantId: req.MerchantId,
	}).Scan(&res.List)
	return
}
