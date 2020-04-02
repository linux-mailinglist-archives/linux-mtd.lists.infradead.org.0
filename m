Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E956819CC8C
	for <lists+linux-mtd@lfdr.de>; Thu,  2 Apr 2020 23:47:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bDc1uh3i4urXAClNQpAef8k8d6L1Y1G4kRnMSMJKjz0=; b=WvQEyvm/flzI+g
	Uh9fJ9tsZGJVcskv69pHUFbDkaH0vDA12Kbt4zrGUbeZlQaYCSsRTp8MhljoQXxz4FS9ETcVjKOB/
	G4yaTD+yHGLuqqMw52NNFHWK9ipLXrDUXQ0Kln9ltPnQjumJ0d34ma4S3zaP/+E9E4VZoF7VHDgoG
	P+TbZjRZ5ufR/bveI2KGJR0WmIL6e8NFIAxjgou4/iUH7kGKZzmTO1W5/UMmV2GjPDAzekLOXF0xJ
	ZYPi2I8VXPFUcGpTvnZGTP4DoSvYBGNOCvwv4Ic3u6Y4y91gqsE4Ve/b4FDEQz5CI1P4Vt+7ZIUXW
	Ma24YC7zVluoOk4TDe+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK7fu-0004Tl-4q; Thu, 02 Apr 2020 21:46:58 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK7fh-0004OB-8o
 for linux-mtd@lists.infradead.org; Thu, 02 Apr 2020 21:46:46 +0000
Received: by mail-lf1-x135.google.com with SMTP id h6so4055070lfp.6
 for <linux-mtd@lists.infradead.org>; Thu, 02 Apr 2020 14:46:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:from:to:cc:references:organization:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=6JQjXC0EwfvzSV38Lb2VfR7cLPVq4DbMhkjr4AG5Ru4=;
 b=wUTcVi+uE6gHemBrY6kCdZAjatNKtdj2wAxeRI9oDDnRxVsegJZBjqMDKweti8Xp/D
 sxbiUBSQfYiMVjGt0ao9J9UrrEhCpdj53+DBQigOY+MtpSiyybZlX6zQc9ziXZ8y087V
 KOmPbReO7FDxQF2tjPtth/6u0M4qCrn5NFe5WD7vShTi6LTvKFukh+r0ohq+RnyqftWE
 qhPQRLcRpCict6vVVHOIsgBy6RkxvOFF+BrNDGSnkzqMx1oZqzyYO5j5KQtAXffBUnZQ
 nZOUpv9dbQEWsfFQGoNXQ5LZb5XwixToc1P0gi4ojevNB/VU+1tlPJEj2hR6aelZiWjq
 qg6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=6JQjXC0EwfvzSV38Lb2VfR7cLPVq4DbMhkjr4AG5Ru4=;
 b=BJBLEs9yJYu+oaleOnBN8a2LstqiGi0A01xJejOiMNk+pv3BzE2dpboWY/9C/dQspJ
 S3o0eCshPRCpaU2kQ/S5871NmZpGWj0B8oEPIdNQRK0w+gxs4z4sG72ss08d/3PWGgPn
 0eqhIt/nRhjrI0Tjyinrua3S8WUmy+TkGz4ip07wedzN43iqS8O23p7VAAphtz5c8RMI
 wUCqPJqUoi6TX7UpvzCXtbpJP6Qai3qx6BXi73qAy3NF0Wi8YuySvXgAXSLVak6NxL4x
 luQnMnauNTYMbd1zr/KISBkKSJg81bTdNpBvkRDQVK/ovVO6dg5UNd+Na/VqMqLDQ+Z6
 I9xQ==
X-Gm-Message-State: AGi0PuYpTe2V4mfd++ULj5oaU+0v84hruClBrvnu/RRkvJ4K/Spd78qi
 gjwDICFCtWxikVE+uvu+xInbMg==
X-Google-Smtp-Source: APiQypIn16yY6geeMnfZFGw2vPiQ0b6+gTZMJZZyKVMSewMH6YVicibadY2Krd2+RWQ+cqeI/FppCg==
X-Received: by 2002:a19:40ca:: with SMTP id n193mr3359792lfa.196.1585864003526; 
 Thu, 02 Apr 2020 14:46:43 -0700 (PDT)
Received: from wasted.cogentembedded.com
 ([2a00:1fa0:638:9d01:50cb:2c0c:a09a:3ff3])
 by smtp.gmail.com with ESMTPSA id y20sm4081316ljy.100.2020.04.02.14.46.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 Apr 2020 14:46:43 -0700 (PDT)
Subject: [PATCH 4/5] mtd: spi-nor: fix kernel-doc for spi_nor::info
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
To: Tudor Ambarus <tudor.ambarus@microchip.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>
References: <a2577f42-a21b-e7c4-c550-f6ea1cf94cf0@cogentembedded.com>
Organization: Cogent Embedded
Message-ID: <431497fe-f139-2038-bf4f-8744918a27c4@cogentembedded.com>
Date: Fri, 3 Apr 2020 00:46:41 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <a2577f42-a21b-e7c4-c550-f6ea1cf94cf0@cogentembedded.com>
Content-Language: en-MW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_144645_310131_58EBF13E 
X-CRM114-Status: GOOD (  15.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:135 listed in]
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
 include/linux/mtd/spi-nor.h |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

Index: renesas-devel/include/linux/mtd/spi-nor.h
===================================================================
--- renesas-devel.orig/include/linux/mtd/spi-nor.h
+++ renesas-devel/include/linux/mtd/spi-nor.h
@@ -561,7 +561,7 @@ struct flash_info;
  * @bouncebuf:		bounce buffer used when the buffer passed by the MTD
  *                      layer is not DMA-able
  * @bouncebuf_size:	size of the bounce buffer
- * @info:		spi-nor part JDEC MFR id and other info
+ * @info:		SPI-NOR part JEDEC MFR ID and other info
  * @page_size:		the page size of the SPI NOR
  * @addr_width:		number of address bytes
  * @erase_opcode:	the opcode for erasing a sector

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
