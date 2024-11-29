// =================================================================================
// This is auto-generated by GoFrame CLI tool only once. Fill this file as you wish.
// =================================================================================

package dao

import (
	"github.com/gogf/gf-demo-user/v2/internal/dao/internal"
)

// internalMerchantDao is internal type for wrapping internal DAO implements.
type internalMerchantDao = *internal.MerchantDao

// merchantDao is the data access object for table merchant.
// You can define custom methods on it to extend its functionality as you wish.
type merchantDao struct {
	internalMerchantDao
}

var (
	// Merchant is globally public accessible object for table merchant operations.
	Merchant = merchantDao{
		internal.NewMerchantDao(),
	}
)

// Fill with you ideas below.
