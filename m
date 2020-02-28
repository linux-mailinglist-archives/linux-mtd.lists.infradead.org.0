Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F949174079
	for <lists+linux-mtd@lfdr.de>; Fri, 28 Feb 2020 20:45:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	References:In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RO/6BaIO2Fym0sjkv+Fp93xmOjXVX30SzcBmXPoGBNY=; b=QCuzMN5zDYnwH4XuKmv0GLObcO
	VnWkMopVmktVirFQmdB+332pjxzxEQHMmEFHugzen4pn2IiqEZqyMvIRQfyGYC27/Jr/dizwJflrX
	Q0/7IdUalMtVV08WLuQnU3XL+qtUjSHWMUJJuJmYW5tFH5UJMTis966RMF+wNlYZT1Yc5HZ1VXzlk
	EVxmVeyIi/YM4DNOV6S6hXm6kK1HnFtcPtUdu+F5CXLzttP9INwyTPRCzLXMHOquQSSf0wxJRox9a
	+5QT3KdhlUPX7BBSML9XG4aiNnVzkFcAR6FJ6lyZ3SjUZXwp/gjtABL3OhyfRRpeFd0ziTE7YQzFT
	toyckk1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7lZS-0006OH-AO; Fri, 28 Feb 2020 19:45:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7lZC-0006NH-P8
 for linux-mtd@lists.infradead.org; Fri, 28 Feb 2020 19:45:00 +0000
Received: from localhost (unknown [137.135.114.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A8F3D2469D;
 Fri, 28 Feb 2020 19:44:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582919097;
 bh=bK6ttLHxmZmdrgRp7OKx2+2nNyPUJ6Ag7mP003FTt0M=;
 h=Date:From:To:To:To:To:Cc:Cc:Cc:Subject:In-Reply-To:References:
 From;
 b=HysKkCrq2rxDZgTw7+s06M6TiFTN/Ah7jYe3kPJL42CjtxqEnZedO9Dva+e4/F0/Z
 Ysx2+bo158mYMC/OMKtcIVY70RETBOPCLWYmLTRDV437JhF+IG6CAVIPxYbMFtaGqF
 k4RBTkKAHlHfMAy0C9tUuyqXVYJGEAFKQxEMTm3Q=
Date: Fri, 28 Feb 2020 19:44:56 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: Alexander A Sverdlin <alexander.sverdlin@nokia.com>
To: Alexander Sverdlin <alexander.sverdlin@nokia.com>
To: linux-mtd@lists.infradead.org
Subject: Re: [PATCH] mtd: spi-nor: Fixup page size and map selection for
 S25FS-S
In-Reply-To: <20200227123657.26030-1-alexander.sverdlin@nokia.com>
References: <20200227123657.26030-1-alexander.sverdlin@nokia.com>
Message-Id: <20200228194457.A8F3D2469D@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_114458_837821_2C535CE9 
X-CRM114-Status: UNSURE (   7.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Alexander Sverdlin <alexander.sverdlin@nokia.com>, stable@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi

[This is an automated email]

This commit has been processed because it contains a "Fixes:" tag
fixing commit: f384b352cbf0 ("mtd: spi-nor: parse Serial Flash Discoverable Parameters (SFDP) tables").

The bot has tested the following trees: v5.5.6, v5.4.22, v4.19.106, v4.14.171.

v5.5.6: Build OK!
v5.4.22: Build OK!
v4.19.106: Failed to apply! Possible dependencies:
    1d5ceff25aa1 ("mtd: spi_nor: pass DMA-able buffer to spi_nor_read_raw()")
    2aaa5f7e0c07 ("mtd: spi-nor: Add a post BFPT parsing fixup hook")
    2bffa65da43e ("mtd: spi-nor: Add a post BFPT fixup for MX25L25635E")
    48e4d973aefe ("mtd: spi-nor: Add a default_init() fixup hook for gd25q256")
    50685024f273 ("mtd: spi-nor: split s25fl128s into s25fl128s0 and s25fl128s1")
    5390a8df769e ("mtd: spi-nor: add support to non-uniform SFDP SPI NOR flash memories")
    815541713730 ("mtd: spi-nor: Add support for mx25u12835f")
    b038e8e3be72 ("mtd: spi-nor: parse SFDP Sector Map Parameter Table")
    b9f07cc8207a ("mtd: spi-nor: don't overwrite errno in spi_nor_get_map_in_use()")
    c797bd81d10e ("mtd: spi-nor: fix iteration over smpt array")

v4.14.171: Failed to apply! Possible dependencies:
    1d5ceff25aa1 ("mtd: spi_nor: pass DMA-able buffer to spi_nor_read_raw()")
    2aaa5f7e0c07 ("mtd: spi-nor: Add a post BFPT parsing fixup hook")
    2bffa65da43e ("mtd: spi-nor: Add a post BFPT fixup for MX25L25635E")
    46dde01f6bab ("mtd: spi-nor: add spi_nor_init() function")
    48e4d973aefe ("mtd: spi-nor: Add a default_init() fixup hook for gd25q256")
    50685024f273 ("mtd: spi-nor: split s25fl128s into s25fl128s0 and s25fl128s1")
    5390a8df769e ("mtd: spi-nor: add support to non-uniform SFDP SPI NOR flash memories")
    65153846b18c ("mtd: spi-nor: add support for GD25Q256")
    815541713730 ("mtd: spi-nor: Add support for mx25u12835f")
    b038e8e3be72 ("mtd: spi-nor: parse SFDP Sector Map Parameter Table")
    b9f07cc8207a ("mtd: spi-nor: don't overwrite errno in spi_nor_get_map_in_use()")
    c797bd81d10e ("mtd: spi-nor: fix iteration over smpt array")
    e27072851bf7 ("mtd: spi-nor: add a quad_enable callback in struct flash_info")


NOTE: The patch will not be queued to stable trees until it is upstream.

How should we proceed with this patch?

-- 
Thanks
Sasha

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
