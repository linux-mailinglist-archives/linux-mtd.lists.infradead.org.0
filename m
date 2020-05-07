Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90D031C8A29
	for <lists+linux-mtd@lfdr.de>; Thu,  7 May 2020 14:11:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l4cRQ8b9lIHe/p5MQAPr7WAOBm6xnZFLX2kNsguFFvU=; b=oV44ZkEdAgXMTU
	GYS9edeMDGS0uiQU9V9RHOgB26Z2czxQjuJ97oIjE/VnynZBJarSTGUsm1Yd7ipXA5oyUVfxSgUmK
	E/fN6VVTNvBi8Bh9eXqkGucMfwG87tp+NNAsI25I4UIRx7DvSDBCbbMtVIjt0iO4iH5PfSVWiV+Mg
	N2UqidsNV7fxSM/FmQlF+FkQvqVzRWgUY2drdsbmp5fGDbdd8sZ0Y/k9nb7aSZ1/4WQGV1VZuijDI
	y/A3aiWLVEJxDqmAqfJ8wLba4FhyY3+CQLAIPTtCencIIC3XEoPkwf/MVMI8zeXhxJsILdNqC3erF
	TeGXjaqt62FqtdxWdMTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWfN0-0000Lj-Dz; Thu, 07 May 2020 12:11:18 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWfMp-0000Kl-FN
 for linux-mtd@lists.infradead.org; Thu, 07 May 2020 12:11:09 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id EA2C82A29CE;
 Thu,  7 May 2020 13:11:05 +0100 (BST)
Date: Thu, 7 May 2020 14:11:03 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>, Mark Rutland
 <mark.rutland@arm.com>
Subject: Re: [PATCH v3 7/8] mtd: rawnand: arasan: Add new Arasan NAND
 controller
Message-ID: <20200507141103.0c241877@collabora.com>
In-Reply-To: <20200507110034.14736-8-miquel.raynal@bootlin.com>
References: <20200507110034.14736-1-miquel.raynal@bootlin.com>
 <20200507110034.14736-8-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_051107_644861_5F650773 
X-CRM114-Status: GOOD (  10.69  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Michal Simek <monstr@monstr.eu>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Rob Herring <robh+dt@kernel.org>,
 linux-mtd@lists.infradead.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu,  7 May 2020 13:00:33 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:


> +
> +static void anfc_chips_cleanup(struct arasan_nfc *nfc)
> +{
> +	struct anand *anand, *tmp;
> +
> +	list_for_each_entry_safe(anand, tmp, &nfc->chips, node) {
> +		nand_release(&anand->chip);

		ret = mtd_device_unregister(nand_to_mtd(&anand->chip));
		WARN_ON(ret);
		nand_cleanup(&anand->chip);

Or maybe add this WARN_ON() to nand_release() so we don't have to ask
people to use mtd_device_unregister() + nand_cleanup(). We really
should fix that at some point (allocate nand_chip and mtd_info
separately and leave a dummy mtd_info object with all hooks returning
ENODEV when the unregister fails).

> +		list_del(&anand->node);
> +	}
> +}

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
