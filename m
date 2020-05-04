Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEFA11C4968
	for <lists+linux-mtd@lfdr.de>; Tue,  5 May 2020 00:10:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=i7s/2M2ZcB1W0xzFeE9or8c++IFXdy3FchNw5g6S4+E=; b=TiJB5Oyv0rRTIMvBF4/ZL1pq1
	owc5kUAQDNyd4/0te8ryrrDWz1VV16MMy1P2K9dRLNLtW99YQqt5qVek8m2MVnvR7y10DmjVYUVLw
	r7XB0rVsCC7JBG6LvfIgsk4VharJ5o1b9VHEQTW4ARHOTc0a0150ztovZSnXfAtEHdQGTcQFgieE+
	5GBQe8+c0wqraOZr93ZBVx200cuNQxfsahiVsI3514J+J75D/7fZ4eoeNuU4Pi7I2cSGt+4y3UKYz
	8TIXcdI29GapY+cZp6N4KJ7VRT2iX+e0Ezn7dNZ7u7ecZYMzLZHGMUm9jOAKY65j1FMAhshHB+sp8
	w6ixEGXZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVjIB-0000dy-8h; Mon, 04 May 2020 22:10:27 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVjHx-0000Z6-BQ
 for linux-mtd@lists.infradead.org; Mon, 04 May 2020 22:10:14 +0000
Received: by mail-pl1-x643.google.com with SMTP id z6so337948plk.10
 for <linux-mtd@lists.infradead.org>; Mon, 04 May 2020 15:10:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=jZLyHH0FOwiw9uaFhugdV/Ka8e6kSYMG1voxw4n6zE4=;
 b=MmB3Bq0Svs+rjKoFS/i+2LTtsnNZGfywx63UfiAkbK3FtnIoF8p6fmj2XjUiW4bUb6
 R8YZEMWFy5WnJTtNGzSql1UoGmkMYGd5IxZd2tzhGtnXIfgsgstUTckYT01tdRSqWn++
 mE4FIZRFIEQYZtldnyT6vlylljYv+EXsOfX592bKErbvK9ynfEThFGY0j8+v9yL5+AYn
 2L8UtEV8btm8yMsHYX41rEU4NZWACwluL1ZQEUck3x1d7WUsJVlADU7tkSZPVlOqRfbF
 zWt6tyEH9zFe0oc93kh+0ghawzhaIp4RGYUaOCMuidQUWyUUfKEqoe0qMA5/9tnalteu
 swHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=jZLyHH0FOwiw9uaFhugdV/Ka8e6kSYMG1voxw4n6zE4=;
 b=tZVPBcSVEwYkzUm40MF951M7oSSwO9/9d5f4Wp9X/cAdGHuadXLEvTYWZl88PPNSwC
 9kuCl6LgqlUNJnxWTGU4/zEHyVZy2rUQit9VGJanvj2oJDx0on2yPaXBQi7NYZ69dj2m
 ffpYMtoEyDxYBoKbcULWcWA2StO3rAX1xXa6JCH3DPu2AeNXdwEiXEv9bZ93oBkvf574
 HYjC5jEeDas+LP4gFxDUHie0CkmafthwPssHPq1yln5MeXN3LWbYsAVQ2Wt7exJXFhbg
 8YA9XVgzajAokkD4MBfQ+fAzF+aIsTmJWjL6WHZg034FzlrY4+u+bZKnu3gQuSPbOG11
 SNeg==
X-Gm-Message-State: AGi0PuYJ7lGcwpshIjjPiwQo+Vs1MRh3KxYQR0plJMhZGqZwltXx3QIr
 bgqfQSq5hpHjyA+pGSZCPGH5TQ==
X-Google-Smtp-Source: APiQypJJPcF0dlqI2sacmykdGez1Z2nDV2mUtw2uVa6WLfP1A1vNVDcBNDSbyg81qVrCEIJS07OSsA==
X-Received: by 2002:a17:90b:46c2:: with SMTP id
 jx2mr296161pjb.67.1588630212239; 
 Mon, 04 May 2020 15:10:12 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id 14sm86208pfy.38.2020.05.04.15.10.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 May 2020 15:10:11 -0700 (PDT)
Date: Mon, 04 May 2020 15:10:11 -0700 (PDT)
X-Google-Original-Date: Mon, 04 May 2020 15:09:13 PDT (-0700)
Subject: Re: [PATCH 1/2] riscv: defconfig: enable spi nor on Hifive Unleashed
 A00 board.
In-Reply-To: <1588240732-13905-2-git-send-email-sagar.kadam@sifive.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: sagar.kadam@sifive.com
Message-ID: <mhng-ccfe9c83-41d6-47a0-b7bc-347573973fec@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_151013_396676_20DBB0F0 
X-CRM114-Status: GOOD (  12.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: vigneshr@ti.com, tudor.ambarus@microchip.com, richard@nod.at,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org, sagar.kadam@sifive.com,
 miquel.raynal@bootlin.com, linux-riscv@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, 30 Apr 2020 02:58:51 PDT (-0700), sagar.kadam@sifive.com wrote:
> Enable MTD based SPI-NOR framework in order to use spi flash
> available on HiFive Unleashed A00 board.
>
> Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
> ---
>  arch/riscv/configs/defconfig | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
> index 4da4886..970580b 100644
> --- a/arch/riscv/configs/defconfig
> +++ b/arch/riscv/configs/defconfig
> @@ -80,6 +80,8 @@ CONFIG_USB_STORAGE=y
>  CONFIG_USB_UAS=y
>  CONFIG_MMC=y
>  CONFIG_MMC_SPI=y
> +CONFIG_MTD=y
> +CONFIG_MTD_SPI_NOR=y
>  CONFIG_RTC_CLASS=y
>  CONFIG_VIRTIO_PCI=y
>  CONFIG_VIRTIO_BALLOON=y

From the second patch's description I'm assuming that MTD still functions
correctly without that change?

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
