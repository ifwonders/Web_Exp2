package takeaway

import (
	"context"
	"github.com/gogf/gf-demo-user/v2/internal/dao"
	"github.com/gogf/gf-demo-user/v2/internal/model/do"
	"github.com/gogf/gf/v2/os/gtime"

	"github.com/gogf/gf-demo-user/v2/api/takeaway/v2"
)

func (c *ControllerV2) CustomerUpdate(ctx context.Context, req *v2.CustomerUpdateReq) (res *v2.CustomerUpdateRes, err error) {
	_, err = dao.Customer.Ctx(ctx).Data(do.Customer{
		Customername: req.Customername,
		Password:     req.Password,
		Mobile:       req.Mobile,
		Email:        req.Email,
		UpdateTime:   gtime.Now(),
	}).WherePri(req.Id).Update()
	return
}
