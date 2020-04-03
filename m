Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 724BF19DFC6
	for <lists+linux-mtd@lfdr.de>; Fri,  3 Apr 2020 22:50:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4I4gQy/wwgpbI2fsOG9xCySMVfaJ9EYhEtVz4q+26/U=; b=B2BWC6mHbocPZ6
	PARZqdmwNHa5uDZFcNnD2ErlqTwLVbm2COK0dAAi+Fw1X1AxC2cE3gfy9uZG/hHIhHC01PQhu1YGw
	oQcP2yjPjCkSPRx6C3GbNwFfbsI2YaMQgbcIeQbBhRDXkQxG3MZvCSUKvczVbXNsOtTgFrgK/Ukjl
	ZrwAgaDX59xxU3mW3+IazUO6GvA+2SBbQWlegcl8DhzIaQ+28Q2VRCTCxTqwXsulLIORIBEgIiv6j
	wZpDMKozE2Rn+7vk/73H8pEfVD2ysDtbXSOXIGgpO6ohtc23JlLpajWN7anTdWfrG3lNJuKc3XDHB
	HxsI3p4IDetpQriXT6DQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKTGZ-0002Py-52; Fri, 03 Apr 2020 20:50:15 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKTGE-0002On-Hh
 for linux-mtd@lists.infradead.org; Fri, 03 Apr 2020 20:49:56 +0000
Received: by mail-lf1-x134.google.com with SMTP id c5so6942558lfp.5
 for <linux-mtd@lists.infradead.org>; Fri, 03 Apr 2020 13:49:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:from:to:cc:references:organization:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=qNBWByJu/Y/5Wlcv8+brRny+TPX7E69g9fqpw+DTRjU=;
 b=k7aTcxPTvRBqheEWXb1/CsKAMSPuo4On8FgnHWsAxz/2OsD7DlYF57cb6kbgYikRt0
 FZWnHBv5BwutDNuzo2hknlMdFew7P61+uRSJ5Vm9AsExgoSOzqT3x95V60QxVQWjZ9FN
 76x8eJmVHSWndJn+pFSCIxXVKEQOQ5m91w8hFS4aBv0HbJC1Zo67OE6wpAT+oDtEC5z6
 fRKJPJoFY+iJHnKBQf0fJWAOWDqExGYZl7LY5pI7b0EZhOPKvt8gQ8TlSVxptgvCcwys
 6FTIm9VltLdfrkt7ajxH3sc0+Xt2Ye2Bd5tp1XGMtUgNk/mo7e7OXBe/h518CqwF4Fgl
 auHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=qNBWByJu/Y/5Wlcv8+brRny+TPX7E69g9fqpw+DTRjU=;
 b=oqu2fcoxjxvOO/q6ejl+55z/YJjOvOwFfpBkGr0Ar0tf+6IEtc1RAR+8K0twh/YAI8
 b8njUOTSBj8A9lo6FkBx7M2/x5JGq9233XsF7lnipZpHf7GdFO+uSTMWi3bSNs3PUG7W
 oNjJUhOdkUptF/TBTkfRB0/KaaxCsMU9nODQqJFqDANNW1Wvv52vfQJs35UB/0A/4cVY
 s0FlVT6mLBOMAN1I+ZWfRoqU6oA3kZhMSDsdegVNPGZ4EnEVsF+Lad5/vKg9BZ1fM6Nw
 UqgsjQjAUa8Pfk33QRtiqtN1lzxf0+ckIc8zNzQwR7hco5LFCL19n0Jrtl5d1XXeFvsr
 B7AQ==
X-Gm-Message-State: AGi0PuYc7gHYeLUEka2THRuervggX4kSec+P/a+xe1DpYhHXPVGU/t6G
 F00ZAfOU8tQ8WvsEKoqwW9EJNp+uiV8=
X-Google-Smtp-Source: APiQypKmCAV9icD/V2hkdfRuvJWSnY/518/Qqhy0/nzT8dsKesjvvAjnZFFatnZYdurd/xbjLw3oww==
X-Received: by 2002:a19:4f43:: with SMTP id a3mr6484464lfk.22.1585946989937;
 Fri, 03 Apr 2020 13:49:49 -0700 (PDT)
Received: from wasted.cogentembedded.com
 ([2a00:1fa0:41a:7e80:40ac:b40e:d552:2978])
 by smtp.gmail.com with ESMTPSA id 23sm5491011ljr.32.2020.04.03.13.49.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 Apr 2020 13:49:49 -0700 (PDT)
Subject: [PATCH v2 4/5] mtd: spi-nor: fix kernel-doc for spi_nor::info
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
To: Tudor Ambarus <tudor.ambarus@microchip.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>
References: <b82675c7-9c90-d0a5-f221-9f51f89e448e@cogentembedded.com>
Organization: Cogent Embedded
Message-ID: <2f00fec3-8385-a7f6-6bae-9014fd46fb9b@cogentembedded.com>
Date: Fri, 3 Apr 2020 23:49:48 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <b82675c7-9c90-d0a5-f221-9f51f89e448e@cogentembedded.com>
Content-Language: en-MW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_134954_592251_B1F8BFAA 
X-CRM114-Status: GOOD (  15.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:134 listed in]
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
Cc: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

When adding the 'info' field to 'struct spi_nor', some acronyms were in
lower case and some in upper case and the JEDEC acronym mistyped -- fix
these issues.

Fixes: 46dde01f6bab ("mtd: spi-nor: add spi_nor_init() function")
Signed-off-by: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>

---
Changes in version 2:
- rebased to the 'spi-nor/next' branch of the MTD repo.

 include/linux/mtd/spi-nor.h |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

Index: linux/include/linux/mtd/spi-nor.h
===================================================================
--- linux.orig/include/linux/mtd/spi-nor.h
+++ linux/include/linux/mtd/spi-nor.h
@@ -335,7 +335,7 @@ struct spi_nor_flash_parameter;
  * @bouncebuf:		bounce buffer used when the buffer passed by the MTD
  *                      layer is not DMA-able
  * @bouncebuf_size:	size of the bounce buffer
- * @info:		spi-nor part JDEC MFR id and other info
+ * @info:		SPI-NOR part JEDEC MFR ID and other info
  * @manufacturer:	spi-nor manufacturer
  * @page_size:		the page size of the SPI NOR
  * @addr_width:		number of address bytes

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
