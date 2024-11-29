package takeaway

import (
	"context"
	"github.com/gogf/gf-demo-user/v2/api/takeaway/v2"
	"github.com/gogf/gf-demo-user/v2/internal/dao"
)

func (c *ControllerV2) OrderGetOne(ctx context.Context, req *v2.OrderGetOneReq) (res *v2.OrderGetOneRes, err error) {
	res = &v2.OrderGetOneRes{}
	err = dao.Order.Ctx(ctx).WherePri(req.Id).Scan(&res.Order)
	return
}
