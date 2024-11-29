package takeaway

import (
	"context"
	"github.com/gogf/gf-demo-user/v2/internal/dao"

	"github.com/gogf/gf-demo-user/v2/api/takeaway/v2"
)

func (c *ControllerV2) CustomerDelete(ctx context.Context, req *v2.CustomerDeleteReq) (res *v2.CustomerDeleteRes, err error) {
	_, err = dao.Customer.Ctx(ctx).WherePri(req.Id).Delete()
	return
}
