Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D1F1B5625
	for <lists+linux-mtd@lfdr.de>; Tue, 17 Sep 2019 21:28:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6shgbOtIJ19cnofByubO23SECOoIofQX4GtbcfTMRvo=; b=amo16igLhKu4/ltYSqlbFCD2wt
	pfVIkUNPmRoVEs+RaFCQ/I9fjFoe5tfMVCDJmMBY6x/A85AtG2RFDdXlH95ObYx9wq4GNVHdJlnzU
	AGFM7+U9CgBg4MJ/ZdRwKHTm+o+FbbgWK4BTceHxnPYXciLi5x22HBdqwJG4IhoJMAiR0urOrlTy0
	BIosmvQVXwYBgjVwE4gcnPVPaX4+MiUMmdvQ6q6fyCs5sTafHct49GDNhEh/knwpT7RA8HHnmO9KW
	aKRH2bwZ7+IJcxzgo2UyynBfJmOrUrkrgbHa1Ur0JJqFV35nDunhDL57xx9IVgGp7uJfTdaHUnFux
	Jxu0hKvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAJ9J-0005oL-Qp; Tue, 17 Sep 2019 19:28:29 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAJ8y-0005nv-1J
 for linux-mtd@lists.infradead.org; Tue, 17 Sep 2019 19:28:09 +0000
Received: by mail-lj1-x244.google.com with SMTP id f5so4749911ljg.8
 for <linux-mtd@lists.infradead.org>; Tue, 17 Sep 2019 12:28:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=from:subject:to:references:organization:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=1r7SK27gwITjiYmqWIkoqwai7OiUgKAHCy7bUaPTExs=;
 b=iCYkQT+w5D5VzAPEA9sh3HAv9j5cV98jUsuIqQ7QQIJppmd1Ted6PB6elYbFUdDmTC
 uJAud3kDsY120h+bT94gIX4mQISRozAVpbmhtuZ9TJakHY7ztlQtLaFlFaCq9ywKTETI
 wTmnp+VO1hU+qdnGwwfQr4fWJQmgOuxU1xonbn71Hn+GHOgxts54XlnFcO3FYjkpSRqR
 pOgcd4C678IPmvuHhF3oYq3aEi+OEx0OaNXWf8/3Hawxok3sSPeB2MfEYUt+dA1u4C9z
 vFySoI3WDpK/MKOUZrAUNsIfcKiDaipnRK0FvSHm2/rCSdUbEFIn+QxE1S09O15lvH3n
 puiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:references:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=1r7SK27gwITjiYmqWIkoqwai7OiUgKAHCy7bUaPTExs=;
 b=rYpvrfmvyqy+5P87parhMiDB0Ej1j6ybrSKMus7bbTyMI5gEYRkhshLNRZgDk/52uk
 6lYua3FFI0xV7xmUKVNBR18d86IsvsEUwsrn8ZF1zmYQLTL7CykIy+z1EAtagyFX0AmN
 8kYXjPVLNg5uXcDIpS2auGCqJgFTDXVH6sKiaFEb/38sBuLzgzjP6CUIL6uKHgyOkBjI
 JNk9sxSPdGT1lQKr6NQf+ifECoxsRTgNKDB2ZxwEwsERALzFEsstwrXaBbPzF2CzQWDh
 lO59SPrW5KcO4c/ldMDvWoj1xKN3HtXDEI7GFuNJJKPOFD6n8wxgZykouRPReRSXICdY
 z9Gg==
X-Gm-Message-State: APjAAAUQwGfSC8IM/qtF5DKU4whSwwuForC7P/PKGIvIKtf4TDAX3/4E
 QJbAMWg3fkTCxVk6PLg+uqYqyA==
X-Google-Smtp-Source: APXvYqwx245MDIf7Rb2lPFsjd65WgcPpqeM0oAUkRgr3kxPKHEXpHRsbRQduhfCRkijIHi7oizWKqg==
X-Received: by 2002:a2e:919a:: with SMTP id f26mr5880ljg.124.1568748484478;
 Tue, 17 Sep 2019 12:28:04 -0700 (PDT)
Received: from wasted.cogentembedded.com
 ([2a00:1fa0:6e6:a4e9:c875:5d39:c4a4:275b])
 by smtp.gmail.com with ESMTPSA id o18sm582697lfb.25.2019.09.17.12.28.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 17 Sep 2019 12:28:03 -0700 (PDT)
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Subject: [PATCH] mtd: cfi_util: use DIV_ROUND_UP() in cfi_udelay()
To: Marek Vasut <marek.vasut@gmail.com>, David Woodhouse
 <dwmw2@infradead.org>, Brian Norris <computersforpeace@gmail.com>,
 Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Vignesh Raghavendra <vigneshr@ti.com>
References: <610761cf-5a19-c182-07d8-8d118ca20035@cogentembedded.com>
Organization: Cogent Embedded
Message-ID: <bd64fb56-c42d-7f7b-c6f1-4d7b43a6d191@cogentembedded.com>
Date: Tue, 17 Sep 2019 22:28:00 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <610761cf-5a19-c182-07d8-8d118ca20035@cogentembedded.com>
Content-Language: en-MW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_122808_258703_489B3660 
X-CRM114-Status: GOOD (  14.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

cfi_udelay() open-codes DIV_ROUND_UP(), violating the kernel coding style
while  doing this...

Signed-off-by: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>

---
This patch is atop of the 'mtd/next' branch of the MTD 'linux.git' repo.

 drivers/mtd/chips/cfi_util.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

Index: linux/drivers/mtd/chips/cfi_util.c
===================================================================
--- linux.orig/drivers/mtd/chips/cfi_util.c
+++ linux/drivers/mtd/chips/cfi_util.c
@@ -26,7 +26,7 @@
 void cfi_udelay(int us)
 {
 	if (us >= 1000) {
-		msleep((us+999)/1000);
+		msleep(DIV_ROUND_UP(us, 1000));
 	} else {
 		udelay(us);
 		cond_resched();

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
