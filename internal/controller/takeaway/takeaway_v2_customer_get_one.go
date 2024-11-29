package takeaway

import (
	"context"
	"github.com/gogf/gf-demo-user/v2/api/takeaway/v2"
	"github.com/gogf/gf-demo-user/v2/internal/dao"
)

func (c *ControllerV2) CustomerGetOne(ctx context.Context, req *v2.CustomerGetOneReq) (res *v2.CustomerGetOneRes, err error) {
	res = &v2.CustomerGetOneRes{}
	err = dao.Customer.Ctx(ctx).WherePri(req.Id).Scan(&res.Customer)
	return
}
