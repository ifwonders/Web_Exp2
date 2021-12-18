// =================================================================================
// Code generated by GoFrame CLI tool. DO NOT EDIT.
// =================================================================================

package dto

import (
	"github.com/gogf/gf/v2/frame/g"
	"github.com/gogf/gf/v2/os/gtime"
)

// User is the golang structure of table user for DAO operations like Where/Data.
type User struct {
	g.Meta   `orm:"table:user, dto:true"`
	Id       interface{} // 用户ID
	Passport interface{} // 用户账号
	Password interface{} // 用户密码
	Nickname interface{} // 用户昵称
	CreateAt *gtime.Time // 创建时间
	UpdateAt *gtime.Time // 更新时间
}
