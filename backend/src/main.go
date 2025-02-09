package main

import (
	"log"
	"os"

	"github.com/gin-gonic/gin"
	"github.com/joho/godotenv"
	"github.com/syuhei0519/household-budget-app/src/routes"
)

func main() {
	// 環境変数をロード
	err := godotenv.Load()
	if err != nil {
		log.Println("Warning: No .env file found")
	}

	// Gin のルーターを作成
	r := gin.Default()

	// ルートを設定
	routes.SetupRoutes(r)

	// サーバーを起動
	port := os.Getenv("PORT")
	if port == "" {
		port = "8080"
	}
	r.Run(":" + port)
}