Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F7501E776C
	for <lists+linux-mtd@lfdr.de>; Fri, 29 May 2020 09:48:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZC5BHMUQv42WheeZSE5gV5u/j5ajUTWg17VIlzb+0sI=; b=oDa2XYgi0bzB3i
	pGeQb0KGHDhv2j0Auknu2aAkGSsfuMS0KWMW/ZuFVD2EIEwhZigtFLW5qHv0puTA9GLTEzjYWqMFt
	Ge2my2YytPa+goXoLRp7JuBFbtWEWYWi0RQ8tjuAajrz2ijoSre0PJOxRfO1gYokQcnNSU84Cwoyg
	zxj/zED7bYBN26/IWwB2IOCC52UjyP+1EgpBYdW7erk6KCMn0Nvow49zSnxdT8HyPuwdikJEPIpG9
	eMtwf10Xl9BcDnyF0YML9Wei1RWgstdgG4PO1DH8t/Apk44SdGIwgfCkjrDmePwb2UfqPimFkXHp/
	OHNk95nEdEEmwFV2XEJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeZkM-0001WM-L1; Fri, 29 May 2020 07:48:06 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeZkH-0001Vq-4r
 for linux-mtd@lists.infradead.org; Fri, 29 May 2020 07:48:02 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:b93f:9fae:b276:a89a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 389D52A4204;
 Fri, 29 May 2020 08:47:59 +0100 (BST)
Date: Fri, 29 May 2020 09:47:55 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v6 17/30] mtd: rawnand: s/data_interface/interface_config/
Message-ID: <20200529094755.6b53f88a@collabora.com>
In-Reply-To: <20200528231612.8958-18-miquel.raynal@bootlin.com>
References: <20200528231612.8958-1-miquel.raynal@bootlin.com>
 <20200528231612.8958-18-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_004801_315235_6B59D2DD 
X-CRM114-Status: GOOD (  12.66  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Rickard Andersson <rickaran@axis.com>, Michal Simek <monstr@monstr.eu>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, 29 May 2020 01:15:59 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> From: Boris Brezillon <boris.brezillon@collabora.com>
> 
> The name/suffix data_interface is a bit misleading in that the field
> or functions actually represent a configuration that can be applied by
> the controller/chip. Let's rename all fields/functions/hooks that are
> worth renaming.
> 
> Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>

I know it's painful to move that one, but I think it should be at the
beginning of the series so the functions/fields you introduce have the
right name from the start.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
