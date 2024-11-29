package takeaway

import (
	"context"
	"github.com/gogf/gf-demo-user/v2/internal/dao"

	"github.com/gogf/gf-demo-user/v2/api/takeaway/v2"
)

func (c *ControllerV2) MerchantDelete(ctx context.Context, req *v2.MerchantDeleteReq) (res *v2.MerchantDeleteRes, err error) {
	_, err = dao.Merchant.Ctx(ctx).WherePri(req.Id).Delete()
	return
}
