package takeaway

import (
	"context"
	"github.com/gogf/gf-demo-user/v2/internal/dao"
	"github.com/gogf/gf-demo-user/v2/internal/model/do"
	"github.com/gogf/gf/v2/os/gtime"

	"github.com/gogf/gf-demo-user/v2/api/takeaway/v2"
)

func (c *ControllerV2) CustomerCreate(ctx context.Context, req *v2.CustomerCreateReq) (res *v2.CustomerCreateRes, err error) {
	insertId, err := dao.Customer.Ctx(ctx).Data(do.Customer{
		Customername: req.Customername,
		Password:     req.Password,
		Mobile:       req.Mobile,
		Email:        req.Email,
		CreateTime:   gtime.Now(),
		UpdateTime:   gtime.Now(),
	}).InsertAndGetId()
	if err != nil {
		return nil, err
	}
	res = &v2.CustomerCreateRes{
		Id: insertId,
	}
	return
}
