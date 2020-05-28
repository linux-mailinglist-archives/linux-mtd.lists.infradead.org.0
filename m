Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 011C41E66F0
	for <lists+linux-mtd@lfdr.de>; Thu, 28 May 2020 17:57:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5zk+DAHBiaNPM5ec+mhVaFvK/WyR2BTqnaQUmvhzCdA=; b=shRTUvrT3m5Sml
	XkUPVoNPyRi+FTlkhjZ4DQvFZi8/aziDksYUDoCgXhVASLyKKdt11AnaORCTFXfnS6puo5sFe3gW4
	sn28bv+6OUZqOvxLdzH5QVDWIxp1t0dfLKz0PpAebEYZWu3iLsuYZKM9ELD1m/qSp0j0Vn83qrtJP
	fx3pouxWVIFTlYPlm7FcqtsCIbeLZEhpAf8fhDLvOyiq2J8FotVMle2IO3bJbansmOvdqXwxdd74J
	HtR3vgviLipJ8cXkB0MC+/c+Y0Y7oQ4oTL9x2WG6ELMi2sSdAHIMjRYEJ9zU6bcOAVD1ev0FpvSr8
	W6+Brgvnj43+rmeI5+cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeKuE-0003iV-Q0; Thu, 28 May 2020 15:57:18 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeKtv-0003ZT-TP; Thu, 28 May 2020 15:57:01 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 726632A336C;
 Thu, 28 May 2020 16:56:58 +0100 (BST)
Date: Thu, 28 May 2020 17:56:56 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v6 18/18] mtd: rawnand: Move generic bits to the ECC
 framework
Message-ID: <20200528175656.0a32dd7c@collabora.com>
In-Reply-To: <20200528113113.9166-19-miquel.raynal@bootlin.com>
References: <20200528113113.9166-1-miquel.raynal@bootlin.com>
 <20200528113113.9166-19-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_085700_074121_10EF8249 
X-CRM114-Status: GOOD (  11.73  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>, Julien Su <juliensu@mxic.com.tw>,
 Richard Weinberger <richard@nod.at>, Weijie Gao <weijie.gao@mediatek.com>,
 Paul Cercueil <paul@crapouillou.net>, Rob Herring <robh+dt@kernel.org>,
 linux-mtd@lists.infradead.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, Chuanhong Guo <gch981213@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, 28 May 2020 13:31:13 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> +/**
> + * nanddev_get_flash_node() - Get the device node attached to a NAND device
> + * @nand: NAND device
> + *
> + * Return: the device node linked to @nand.
> + */
> +static inline struct device_node *nanddev_get_flash_node(struct nand_device *nand)
> +{
> +	return mtd_get_of_node(nanddev_to_mtd(nand));
> +}
> +

Can we name that one nanddev_get_of_node(). We'll probably want to
expose fwnode at some point, and get_flash_node() is a bit too generic
IMO.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
