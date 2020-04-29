Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C27021BE0C5
	for <lists+linux-mtd@lfdr.de>; Wed, 29 Apr 2020 16:23:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=onzeJQueh42W77M5OoIzUrz92vAD9TVfcynDbLN2Ajo=; b=U+7uf/FBvongLP
	AoYsbO0yZdEL1YbCFvMM72AvGT6xpP7bEIJLPUexPey/CoKVbef239FR751t7eitWfaLG2e5VUsBh
	D3HFbjDclRLlan7hHuCEiw+GSd6VBCwT5nvVWPI0IYBuJEsEMuePOxRhj0EWwTTOky4wvq2aUKn4A
	r36tI76dKEilWFTe92AyN7HbvImikeeIN74BRzwMt9ARxSvPdJSHZS/XI96l//WgsQHNpXJBSlrAf
	dQI1Lb8WE2IJxDgGtOmr9v96yIEnVEmrDXJ6ThdCAVeIJnTwmJ7JpKvIJ+xVpYI/XLgLzzsXb3Vhy
	E96WSSn8+jP8fyqIE8dA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTnc9-0005s9-QK; Wed, 29 Apr 2020 14:23:05 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTnc1-0005qB-Sx
 for linux-mtd@lists.infradead.org; Wed, 29 Apr 2020 14:22:59 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id D92BE2A2054;
 Wed, 29 Apr 2020 15:22:53 +0100 (BST)
Date: Wed, 29 Apr 2020 16:22:49 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: "Ramuthevar, Vadivel MuruganX"
 <vadivel.muruganx.ramuthevar@linux.intel.com>
Subject: Re: [PATCH v4 2/2] mtd: rawnand: Add NAND controller support on
 Intel LGM SoC
Message-ID: <20200429162249.55d38ee8@collabora.com>
In-Reply-To: <20200429104205.18780-3-vadivel.muruganx.ramuthevar@linux.intel.com>
References: <20200429104205.18780-1-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200429104205.18780-3-vadivel.muruganx.ramuthevar@linux.intel.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_072258_063493_590F1ED2 
X-CRM114-Status: UNSURE (   8.30  )
X-CRM114-Notice: Please train this message.
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
Cc: cheol.yong.kim@intel.com, devicetree@vger.kernel.org,
 masonccyang@mxic.com.tw, anders.roxell@linaro.org, vigneshr@ti.com,
 arnd@arndb.de, hauke.mehrtens@intel.com, richard@nod.at,
 brendanhiggins@google.com, linux-kernel@vger.kernel.org,
 linux-mips@vger.kernel.org, robh+dt@kernel.org, linux-mtd@lists.infradead.org,
 miquel.raynal@bootlin.com, tglx@linutronix.de, qi-ming.wu@intel.com,
 andriy.shevchenko@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, 29 Apr 2020 18:42:05 +0800
"Ramuthevar, Vadivel MuruganX"
<vadivel.muruganx.ramuthevar@linux.intel.com> wrote:

> +
> +#define EBU_ADDR_SEL(n)		(0x20 + (n) * 4)
> +#define EBU_ADDR_MASK		(5 << 4)

It's still unclear what ADDR_MASK is for. Can you add a comment
explaining what it does?

> +#define EBU_ADDR_SEL_REGEN	0x1


> +
> +	writel(lower_32_bits(ebu_host->cs[ebu_host->cs_num].nand_pa) |
> +	       EBU_ADDR_SEL_REGEN | EBU_ADDR_MASK,
> +	       ebu_host->ebu + EBU_ADDR_SEL(reg));
> +
> +	writel(EBU_MEM_BASE_CS_0 | EBU_ADDR_MASK | EBU_ADDR_SEL_REGEN,
> +	       ebu_host->ebu + EBU_ADDR_SEL(0));
> +	writel(EBU_MEM_BASE_CS_1 | EBU_ADDR_MASK | EBU_ADDR_SEL_REGEN,
> +	       ebu_host->ebu + EBU_ADDR_SEL(reg));

That's super weird. You seem to set EBU_ADDR_SEL(reg) twice. Are you
sure that's needed, and are we setting EBU_ADDR_SEL(0) here?

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
