Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D6ADE8DA8
	for <lists+linux-mtd@lfdr.de>; Tue, 29 Oct 2019 18:09:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=S0YdK1iEEMNJpwNjIz1kVlnVkxXY7j6f+5dgRUigs/M=; b=sLUbxtDReV/0w3
	KJaMxn/oceVRQGnVwcEojRp/RvKmey0+rlOeXD/DtR0JE2FJKhOHWJhVLGWEfAXvpFvfJWoauheqo
	9iMMRqVnEjKqklC/e+un47hQoIXwiaXObEGaa84Je1kleZfVWuq9ciIfhiEXcroN11xkaPXKw0Po8
	203fd6YqMU2d1KFxa7yF+vWpJPc5JlzPP950QgsWEGPAVPHA9jckKovArwmu8a71SdX3IuGp5cpHi
	fXIQO8W5C/q0VA95EOIEUyQPZevBkAESTmsdWrXxHqrTQyFuPTMHHtTwfbovzf8robT3Lfj4DqcVU
	1f6Kcz4wxylRtzEHRPZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPUzW-0003qp-9L; Tue, 29 Oct 2019 17:09:10 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPUzM-0003q6-4K
 for linux-mtd@lists.infradead.org; Tue, 29 Oct 2019 17:09:01 +0000
Received: by mail-pf1-x441.google.com with SMTP id c184so10036429pfb.0
 for <linux-mtd@lists.infradead.org>; Tue, 29 Oct 2019 10:08:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=aoq6jyjkoC3LpN2Vxb6LSXbZ7+YI0W6uo+6lRedmGDE=;
 b=tH1vqV7j2AqRq678Xfjq3gRUPwBGXd8w1sEUZwdL9SAx56yGie9zKFY8TI/UUNvK+Z
 mHGRXsyubOzva7SVlwrAlyjrtlkvn2ryMDjR6fs01Bfv8yKZOS2KNVvYqHzcIFvW9zX0
 CXcOWcGOhh6vbAa/xPZPvHKByOFDfTtaQxT/4+zwnOHBJ1cLjDdVBaX8sRm1fWV0nfbW
 G63MtcQWbN44+cB/XV+w4a780UjE3Sk9Xlugk+qudl7qAVmnC6u7oP1fftT87lUMwowQ
 6/zdg/TB0USvZlBBq5kFcN8sFgFXZDP5gt4pHBri8zevrZwDj7pfBrM3kKj9TFj89+6+
 CZlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=aoq6jyjkoC3LpN2Vxb6LSXbZ7+YI0W6uo+6lRedmGDE=;
 b=NqkW+uKtoNjL8Ys+1+gILzi06H3RrUlEy244PtJPCU+sUlA46ToD9rt+VBiBx5a/zg
 SzYVE1PvlujZT0gg/L3/s+qbktjkz6GHT6UDIDCO1UAr4RlsSh+DdWX666QYhrL33br1
 TM8hvI6KLPUe5O65GCD8+mPL2yPQ78Hxgm5ZbU4O0MOobJrBAN6x+XUeTa5cZjtT5vhg
 8mnhQ5OG858AnHxJTo72DfSEKIIUdpl8I/YD+geHCCdugYx2IcOuFUsBl+7MfpbOw0dY
 qoKBDsTA04Ao8s6/JPSgqrLR3yK83zH8Gw333kPUzqRyCzK9xI8qtQYetMT8COXTkXqx
 ZWYw==
X-Gm-Message-State: APjAAAXtpeOEgs1sPK74m5hUigjZEE4v3CApquyWo0LyMVaOnd+N4Sh6
 V8dElFZZ1t1GLhky97un4qU=
X-Google-Smtp-Source: APXvYqzTkzwJ0BXcf4IXcjo6Y78qFVRs5sX4tLnGbhmCgxWUiKRqBDt8mz1dGXIVGLdT2IDSgeSRyQ==
X-Received: by 2002:a63:2d81:: with SMTP id
 t123mr28815254pgt.306.1572368939385; 
 Tue, 29 Oct 2019 10:08:59 -0700 (PDT)
Received: from saurav ([117.232.226.35])
 by smtp.gmail.com with ESMTPSA id o12sm13253177pgl.86.2019.10.29.10.08.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 10:08:57 -0700 (PDT)
Date: Tue, 29 Oct 2019 22:38:49 +0530
From: Saurav Girepunje <saurav.girepunje@gmail.com>
To: joern@lazybastard.org, dwmw2@infradead.org, computersforpeace@gmail.com,
 marek.vasut@gmail.com, miquel.raynal@bootlin.com, richard@nod.at,
 vigneshr@ti.com, linux-mtd@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v1] mtd: devices: phram.c: Fix multiple kfree statement from
 phram_setup
Message-ID: <20191029170849.GA6279@saurav>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_100900_171764_B0E6D920 
X-CRM114-Status: GOOD (  11.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (saurav.girepunje[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: saurav.girepunje@hotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Remove multiple kfree statement from phram_setup() in phram.c

Signed-off-by: Saurav Girepunje <saurav.girepunje@gmail.com>
---

Change in v1:

- Add change suggested by Miquel Raynal <miquel.raynal@bootlin.com>
  "The goto statement should not describe from where it is called but the
   action it is supposed to take. 'goto free_nam;' would be better."

 drivers/mtd/devices/phram.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/devices/phram.c b/drivers/mtd/devices/phram.c
index c467286ca007..38f95a1517ac 100644
--- a/drivers/mtd/devices/phram.c
+++ b/drivers/mtd/devices/phram.c
@@ -243,22 +243,22 @@ static int phram_setup(const char *val)
 
 	ret = parse_num64(&start, token[1]);
 	if (ret) {
-		kfree(name);
 		parse_err("illegal start address\n");
+		goto free_nam;
 	}
 
 	ret = parse_num64(&len, token[2]);
 	if (ret) {
-		kfree(name);
 		parse_err("illegal device length\n");
+		goto free_nam;
 	}
 
 	ret = register_device(name, start, len);
 	if (!ret)
 		pr_info("%s device: %#llx at %#llx\n", name, len, start);
-	else
-		kfree(name);
 
+free_nam:
+	kfree(name);
 	return ret;
 }
 
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
