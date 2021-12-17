package main

import qrcode "github.com/skip2/go-qrcode"

func main() {
	if err := qrcode.WriteFile("Hello Captain Corgi", qrcode.Medium, 256, "qr.png"); err != nil {
		panic(err)
	}
}
