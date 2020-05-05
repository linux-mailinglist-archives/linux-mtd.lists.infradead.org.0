Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C29ED1C5025
	for <lists+linux-mtd@lfdr.de>; Tue,  5 May 2020 10:21:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zNunJaBIpS0ak/oDj2XdVRdYUjzKaH776aILlbE/Sy8=; b=AJn0WEwnaHASQZ
	OsVX6bH88IocesSjgJrGyRSiNxPfGCAefMkwzLr4xDxnDa4GezeyfkvY3A1dVA9Df/g6moLm/6dVF
	eSVa5MoaQEzS1KfXgg6E9Ez/x68EXdvfzCR9IG+NkLrz4JLncsVpAgmVc4Iu6HrAp26/oDAYtSXeV
	xyB6eAM2JPGI7cZB7Bkt6z+yRpqZ0Ol5LYaOm1G2+kEprWYnvnjLmhWte3X/90lsVpk0oWRp0w5LC
	+UFlCNAdHGhPM1VgbH2zQyjvRBzwiebQOWtKcrmnxq7Pbx8cPWvW1jw58OHW7ue07cL4F0Uvg7BVP
	DTjYvxOu5xBYZGxxpFVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVspC-0007IP-UP; Tue, 05 May 2020 08:21:10 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVsp4-0007Hi-Vh
 for linux-mtd@lists.infradead.org; Tue, 05 May 2020 08:21:04 +0000
Received: by mail-wr1-x444.google.com with SMTP id s8so1573063wrt.9
 for <linux-mtd@lists.infradead.org>; Tue, 05 May 2020 01:21:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tu5nPp2tsr/xXDZw6NiH6JY/janBM8/TqJS/baK6bXk=;
 b=hfCvpOqo590T0shuE1cPR7Tyz4uhd2A/5uh7k+1VU2jedYxG9T1l4vgT1N5LVp7/rU
 tBOap/HTZwM8PxrP/4Ry1VPhX+JjSr7aTQj32sKsZ361l7KSOldxc+/lOT4bb08zXTIY
 bGsadrq+6cxj1FWYpnXSU1qMjEJQcvbHecedCmrt9tDQfKV5bNW1DJCKuqHw6OqylKyK
 0nVefIu/SOI2KBuHsym/FdIb5P6Oza1bDm+mZMzXdIDrCWd106b5mQDChyD92l0ppLwI
 pSAuWHwF8e1cLmCubRyxw+0jZgwwurLfMxVchOT31Zqja55LvsEICbiRb/7Zxlh3MSFy
 TSaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tu5nPp2tsr/xXDZw6NiH6JY/janBM8/TqJS/baK6bXk=;
 b=VBS5iAfGZIWY1q8/uqZtm0p1jdYftRX6WhHz0v9ErigvDBHgpNjhHZSImgdqyi38EB
 1okW8wdtuBIqf4R6oZ73mrG/kNTds67lTsKwE8icadXqqDZAo/QV42Kxlu7R29SCvrYH
 RnMvSxKZcux6qgOnIgOipZNtoMq/miYkKOMGLT+KPnsHseVyAO/dl6pogloCkK2AWWQ0
 BIt83fiwcQXe9WvLd9kLvEs5k333LhSGRWk0nyPSwohNC2xmqfUJCqxonRhCNx1ThHEk
 7ldSo5avnbtPA9Q2SQw8qXAEbb6UCqdz/njKDIPjn5iqsDXDJ9sGo4lvBHWe9Aarj5PH
 /IiA==
X-Gm-Message-State: AGi0PuaLJ4FpMze23CQkuCXsjSr8uA41FgkdGJaYI0wOSx3+jQ1z68AN
 QVENbmRckjfPhoOt7jtikKA=
X-Google-Smtp-Source: APiQypLrjmQKo6d9M8OL1hHuv8HTAuaj9UpwYWqHt0WxaUQvw0OPHJw9ZyiR41AHYzey4MuSaYo7Cw==
X-Received: by 2002:adf:fa41:: with SMTP id y1mr2198454wrr.131.1588666860081; 
 Tue, 05 May 2020 01:21:00 -0700 (PDT)
Received: from skynet.lan (246.red-83-44-9.dynamicip.rima-tde.net.
 [83.44.9.246])
 by smtp.gmail.com with ESMTPSA id k9sm1969160wrd.17.2020.05.05.01.20.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 01:20:59 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: computersforpeace@gmail.com, kdasu.kdev@gmail.com,
 miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
 sumit.semwal@linaro.org, linux-mtd@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org
Subject: [PATCH v2] nand: brcmnand: correctly verify erased pages
Date: Tue,  5 May 2020 10:20:55 +0200
Message-Id: <20200505082055.2843847-1-noltari@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200504092943.2739784-1-noltari@gmail.com>
References: <20200504092943.2739784-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_012103_024812_036D1D9F 
X-CRM114-Status: GOOD (  12.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

VGhlIGN1cnJlbnQgY29kZSBjaGVja3MgdGhhdCB0aGUgd2hvbGUgT09CIGFyZWEgaXMgZXJhc2Vk
LgpUaGlzIGlzIGEgcHJvYmxlbSB3aGVuIEpGRlMyIGNsZWFubWFya2VycyBhcmUgYWRkZWQgdG8g
dGhlIE9PQiwgc2luY2UgaXQgd2lsbApmYWlsIGR1ZSB0byB0aGUgdXNhYmxlIE9PQiBieXRlcyBu
b3QgYmVpbmcgMHhmZi4KQ29ycmVjdCB0aGlzIGJ5IG9ubHkgY2hlY2tpbmcgdGhhdCB0aGUgRUND
IGFyZW4ndCAweGZmLgoKRml4ZXM6IDAyYjg4ZWVhOWY5YyAoIm10ZDogYnJjbW5hbmQ6IEFkZCBj
aGVjayBmb3IgZXJhc2VkIHBhZ2UgYml0ZmxpcHMiKQoKU2lnbmVkLW9mZi1ieTogw4FsdmFybyBG
ZXJuw6FuZGV6IFJvamFzIDxub2x0YXJpQGdtYWlsLmNvbT4KLS0tCiB2MjogQWRkIEZpeGVzIHRh
ZwoKIGRyaXZlcnMvbXRkL25hbmQvcmF3L2JyY21uYW5kL2JyY21uYW5kLmMgfCAyMiArKysrKysr
KysrKysrKysrKystLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTggaW5zZXJ0aW9ucygrKSwgNCBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL210ZC9uYW5kL3Jhdy9icmNtbmFuZC9icmNt
bmFuZC5jIGIvZHJpdmVycy9tdGQvbmFuZC9yYXcvYnJjbW5hbmQvYnJjbW5hbmQuYwppbmRleCBl
NGUzY2VlYWMzOGYuLjU0NmYwODA3Yjg4NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9tdGQvbmFuZC9y
YXcvYnJjbW5hbmQvYnJjbW5hbmQuYworKysgYi9kcml2ZXJzL210ZC9uYW5kL3Jhdy9icmNtbmFu
ZC9icmNtbmFuZC5jCkBAIC0yMDE4LDYgKzIwMTgsNyBAQCBzdGF0aWMgaW50IGJyY21uYW5kX3Jl
YWRfYnlfcGlvKHN0cnVjdCBtdGRfaW5mbyAqbXRkLCBzdHJ1Y3QgbmFuZF9jaGlwICpjaGlwLAog
c3RhdGljIGludCBicmNtc3RiX25hbmRfdmVyaWZ5X2VyYXNlZF9wYWdlKHN0cnVjdCBtdGRfaW5m
byAqbXRkLAogCQkgIHN0cnVjdCBuYW5kX2NoaXAgKmNoaXAsIHZvaWQgKmJ1ZiwgdTY0IGFkZHIp
CiB7CisJc3RydWN0IG10ZF9vb2JfcmVnaW9uIG9vYmVjYzsKIAlpbnQgaSwgc2FzOwogCXZvaWQg
Km9vYiA9IGNoaXAtPm9vYl9wb2k7CiAJaW50IGJpdGZsaXBzID0gMDsKQEAgLTIwMzUsMTEgKzIw
MzYsMjQgQEAgc3RhdGljIGludCBicmNtc3RiX25hbmRfdmVyaWZ5X2VyYXNlZF9wYWdlKHN0cnVj
dCBtdGRfaW5mbyAqbXRkLAogCWlmIChyZXQpCiAJCXJldHVybiByZXQ7CiAKLQlmb3IgKGkgPSAw
OyBpIDwgY2hpcC0+ZWNjLnN0ZXBzOyBpKyssIG9vYiArPSBzYXMpIHsKKwlmb3IgKGkgPSAwOyBp
IDwgY2hpcC0+ZWNjLnN0ZXBzOyBpKyspIHsKIAkJZWNjX2NodW5rID0gYnVmICsgY2hpcC0+ZWNj
LnNpemUgKiBpOwotCQlyZXQgPSBuYW5kX2NoZWNrX2VyYXNlZF9lY2NfY2h1bmsoZWNjX2NodW5r
LAotCQkJCQkJICBjaGlwLT5lY2Muc2l6ZSwKLQkJCQkJCSAgb29iLCBzYXMsIE5VTEwsIDAsCisK
KwkJcmV0ID0gbmFuZF9jaGVja19lcmFzZWRfZWNjX2NodW5rKGVjY19jaHVuaywgY2hpcC0+ZWNj
LnNpemUsCisJCQkJCQkgIE5VTEwsIDAsIE5VTEwsIDAsCisJCQkJCQkgIGNoaXAtPmVjYy5zdHJl
bmd0aCk7CisJCWlmIChyZXQgPCAwKQorCQkJcmV0dXJuIHJldDsKKworCQliaXRmbGlwcyA9IG1h
eChiaXRmbGlwcywgcmV0KTsKKwl9CisKKwlmb3IgKGkgPSAwOyBtdGQtPm9vYmxheW91dC0+ZWNj
KG10ZCwgaSwgJm9vYmVjYykgIT0gLUVSQU5HRTsgaSsrKQorCXsKKwkJcmV0ID0gbmFuZF9jaGVj
a19lcmFzZWRfZWNjX2NodW5rKE5VTEwsIDAsCisJCQkJCQkgIG9vYiArIG9vYmVjYy5vZmZzZXQs
CisJCQkJCQkgIG9vYmVjYy5sZW5ndGgsCisJCQkJCQkgIE5VTEwsIDAsCiAJCQkJCQkgIGNoaXAt
PmVjYy5zdHJlbmd0aCk7CiAJCWlmIChyZXQgPCAwKQogCQkJcmV0dXJuIHJldDsKLS0gCjIuMjYu
MgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
