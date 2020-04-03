Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D234319DFC2
	for <lists+linux-mtd@lfdr.de>; Fri,  3 Apr 2020 22:46:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aJjb5kuXPTxtAt85b3gISN9dWyIGe/uqIh5E2R9d7OQ=; b=fgjBmpB/eWtam8
	IxnDaFvN/BHtdAExp0+7RAwVo3iQTanXsd3OQXCpWdpGC1bGlNDiKQMZPsvUHTVxXEOWc03SA5Dk1
	QPTje5EdfeIoaXTtgrO8TvJQH0BgGu/kG7bJxlx4ZOozwPL0FjSEwTFR8ceoq2LfqDyZvffTG6oWQ
	IrAIOAhupBsoiYshMKjPvyZWYvIzcGRk5PkwkRInYnQYZ4bdIefdjyoVBZc9Xe6X8zfMLssuyJBly
	SUdgeVqCG+tfaEe2q6iuoOsrvPsdWPmBI9eGzVIWL+F4959vFuaUfwHDgJsh3V9r5QN/XnQf9aBR0
	TpwQOyTJQJWPbwyRZ+XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKTCV-0001vB-6W; Fri, 03 Apr 2020 20:46:03 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKTCL-0001uc-JL
 for linux-mtd@lists.infradead.org; Fri, 03 Apr 2020 20:45:55 +0000
Received: by mail-lj1-x22b.google.com with SMTP id t17so8332767ljc.12
 for <linux-mtd@lists.infradead.org>; Fri, 03 Apr 2020 13:45:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:from:to:cc:references:organization:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=mVELb+hDPm+jixjmUC12Dl8jXzoiHmS8blUM+NYvHEk=;
 b=KtAcbpkRp5s/pWi0gk78PKVB1OyLzE5wXbTPbMm7XNzkK4NwJgQk5+23lXhZjPerCp
 uNIXI8GQgzuQiXsU4hrdPu9qPbH3GrOFojoDs6hwb3Mez304yizYyp8xkekIP0mBVhf8
 iHGNtJ3H7JdmfSsqsc+jJ3Khtq2PjSNxdi1iuSfju0fuRM52AnH6mIf9jvtipcTR3bXq
 KlZUAdobZktthZ2N4J/Yze2GOOw/hC0NmM11cJI672q1GTirYmfXhJHv11SKzeFAcr3+
 r3wQA5RwHjdFGPNgNrCAc+/y8zbdeVr3dEVE5GBI0vkVLaNAIrdexknRk3KjJWxVHH05
 M6sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=mVELb+hDPm+jixjmUC12Dl8jXzoiHmS8blUM+NYvHEk=;
 b=V+dFzEmWq5arIcrCQMlnwePRAhfTRGRVkrzm4ujUipAMK63XQHHae95+gRTteqGgr0
 BPLx7NpgHWU/JzqhA8LRpbCw4AETakmkaOjugyKQFpQ7tXsnRlCEBZ8bCc8l4BX+hGBa
 Lw9Ay4DLfwMR2AAloY2LBPh7nwWcQchONSx0VuiekgIcfJnRVhMjk0hklRoreOVky0Sv
 DC4U/I26O7LA+UbNx7RS1KKjxEKm6EVnC7wc1/5ef8aCy+geYL5I4oLUutj3FiohGzVZ
 uOhOjD2Vr1Jwccv5NFdzJT32wp4YlnUtnpniB0Yq8Ci6hPXvN7MiN3iO4yt+Jz4pq61o
 dpwg==
X-Gm-Message-State: AGi0PuZ93OuZMw0XFLXXA127zpCstKA2TGe7oTbZGy7l31Xn60cmUIK6
 lrcCfTB9TC4L9YWl8i1cIMGQ3w==
X-Google-Smtp-Source: APiQypLqezOjrLlo9Tu0B8HwV+dsW2FmC+IyTLg9uy4DCL/zQeEXmZXmh0vWzWgcENMtxBSSJ2ntKQ==
X-Received: by 2002:a2e:8602:: with SMTP id a2mr6053550lji.160.1585946751296; 
 Fri, 03 Apr 2020 13:45:51 -0700 (PDT)
Received: from wasted.cogentembedded.com
 ([2a00:1fa0:41a:7e80:40ac:b40e:d552:2978])
 by smtp.gmail.com with ESMTPSA id m7sm7239973lfh.54.2020.04.03.13.45.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 Apr 2020 13:45:50 -0700 (PDT)
Subject: [PATCH v2 3/5] mtd: spi-nor: fix kernel-doc for spi_nor::reg_proto
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
To: Tudor Ambarus <tudor.ambarus@microchip.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>
References: <b82675c7-9c90-d0a5-f221-9f51f89e448e@cogentembedded.com>
Organization: Cogent Embedded
Message-ID: <2f773174-1cf0-9ebd-a0df-311dd9d5e22b@cogentembedded.com>
Date: Fri, 3 Apr 2020 23:45:49 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <b82675c7-9c90-d0a5-f221-9f51f89e448e@cogentembedded.com>
Content-Language: en-MW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_134553_638318_CE0CB4A6 
X-CRM114-Status: GOOD (  14.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:22b listed in]
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

When adding the '{read|write|reg}_proto' fields to 'struct spi_nor', a
colon was missed in the comment for the spi_nor::reg_proto' -- add it.

Fixes: cfc5604c488c ("mtd: spi-nor: introduce SPI 1-2-2 and SPI 1-4-4 protocols")
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
@@ -347,7 +347,7 @@ struct spi_nor_flash_parameter;
  * @flags:		flag options for the current SPI-NOR (SNOR_F_*)
  * @read_proto:		the SPI protocol for read operations
  * @write_proto:	the SPI protocol for write operations
- * @reg_proto		the SPI protocol for read_reg/write_reg/erase operations
+ * @reg_proto:		the SPI protocol for read_reg/write_reg/erase operations
  * @controller_ops:	SPI NOR controller driver specific operations.
  * @params:		[FLASH-SPECIFIC] SPI-NOR flash parameters and settings.
  *                      The structure includes legacy flash parameters and

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
