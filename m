Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 818F49CFB1
	for <lists+linux-mtd@lfdr.de>; Mon, 26 Aug 2019 14:38:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f6rvvbaSU3+B0Pm2vD/SR8Xn+zd6KcDSWVf1etd98Ck=; b=brlAz9xkhdaV7J
	cNEGGxDJFHFbWoxnEwf+LUCyOxslA+uyV24KcjiifklmkUmcDIpOVP+CwgWzRCW13UatBw2qLRW1J
	0xWNnc80uiPVcsbbUycXncysCy/CRz1JAKr9poZPSbmZN9DYBVcwAxY9OW5np+IvHldNmXnGUdVP0
	UK4KnXgrnC/23dwSbsNpE2US4PYflIsIF5sUuuMv+fqcy7pR9vFoYBFSgJBXWpuzHG5IH1xsZo6Ft
	Qpx8rrd+R8xcBV4xAPTcHpBobiSJKWKkKj8iFTSnQGDuujI+sy7nhluF+84cTtBW1ek/ltLP2wyEK
	eRWKqIaN9exb0OAvB1sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2EGX-0004Xs-9d; Mon, 26 Aug 2019 12:38:33 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2EGQ-0004Wo-9K
 for linux-mtd@lists.infradead.org; Mon, 26 Aug 2019 12:38:27 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id CCF6328A178;
 Mon, 26 Aug 2019 13:38:21 +0100 (BST)
Date: Mon, 26 Aug 2019 14:38:18 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: <Tudor.Ambarus@microchip.com>
Subject: Re: [RESEND PATCH v3 04/20] mtd: spi-nor: Move erase_map to 'struct
 spi_nor_flash_parameter'
Message-ID: <20190826143818.0eee77b2@collabora.com>
In-Reply-To: <20190826120821.16351-5-tudor.ambarus@microchip.com>
References: <20190826120821.16351-1-tudor.ambarus@microchip.com>
 <20190826120821.16351-5-tudor.ambarus@microchip.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_053826_458604_A3C0C776 
X-CRM114-Status: GOOD (  13.52  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: vigneshr@ti.com, richard@nod.at, linux-kernel@vger.kernel.org,
 marek.vasut@gmail.com, linux-mtd@lists.infradead.org,
 miquel.raynal@bootlin.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, 26 Aug 2019 12:08:38 +0000
<Tudor.Ambarus@microchip.com> wrote:

> From: Tudor Ambarus <tudor.ambarus@microchip.com>
> 
> All flash parameters and settings should reside inside
> 'struct spi_nor_flash_parameter'. Move the SMPT parsed erase map
> from 'struct spi_nor' to 'struct spi_nor_flash_parameter'.
> 
> Please note that there is a roll-back mechanism for the flash
> parameter and settings, for cases when SFDP parser fails. The SFDP
> parser receives a Stack allocated copy of nor->params, called
> sfdp_params, and uses it to retrieve the serial flash discoverable
> parameters. JESD216 SFDP is a standard and has a higher priority
> than the default initialized flash parameters, so will overwrite the
> sfdp_params data when needed. All SFDP code uses the local copy of
> nor->params, that will overwrite it in the end, if the parser succeds.
> 
> Saving and restoring the nor->params.erase_map is no longer needed,
> since the SFDP code does not touch it.
> 
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
> ---
> v3: Collect R-b

Looks like you actually forgot to collect them :P.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
