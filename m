Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3E6233090
	for <lists+linux-mtd@lfdr.de>; Mon,  3 Jun 2019 15:05:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e0LFcXuuB3Ml/hd/1f+vqwQlEefyQC+7U2hYTbpESPU=; b=UlHjVun3TBlY9T
	Fyzamzn5GJw3sGVOnpB7b8z1tkZ/MGrqmkgmN4k0H4vkEEsh50n4KhZwWNToU8shjnZ4X8qfNpqHb
	ODbX67T0RLWCDIt9ch1q29q03w0wzmkaauIdYT4M9r/AaZ8Yih3ZX78jLGw4FBL8FCt1elDokyDW1
	1veiwazNsc7QWKSdm9TwjWp4XG++svhdevR35FQMbEixzC+9wTLQO+wLOoLAnyUjBVEaJXpnvRPsD
	z974Tgui/oIyb/9qIyKmBAw13/WP72gzgKMkORSIN9Lhzn+CsXvh5oL2qFTiPARt8FJV4VBa/E7PT
	HDn9l4NxnVkfU/Dfknxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXmev-0008A5-CB; Mon, 03 Jun 2019 13:05:53 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXmek-00089Q-U8
 for linux-mtd@lists.infradead.org; Mon, 03 Jun 2019 13:05:44 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id BDC3D285189;
 Mon,  3 Jun 2019 14:05:39 +0100 (BST)
Date: Mon, 3 Jun 2019 15:05:37 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: "Shivamurthy Shastri (sshivamurthy)" <sshivamurthy@micron.com>
Subject: Re: [PATCH v3 04/12] mtd: rawnand: introduce struct onfi_helper
Message-ID: <20190603150537.3ca5ca8a@collabora.com>
In-Reply-To: <MN2PR08MB5951E35FED92DD502F57B590B8140@MN2PR08MB5951.namprd08.prod.outlook.com>
References: <MN2PR08MB5951E35FED92DD502F57B590B8140@MN2PR08MB5951.namprd08.prod.outlook.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_060543_230914_B2F2CB66 
X-CRM114-Status: GOOD (  20.54  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: Lucas Stach <dev@lynxeye.de>, Vignesh Raghavendra <vigneshr@ti.com>,
 Boris Brezillon <bbrezillon@kernel.org>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Richard Weinberger <richard@nod.at>, Yixun Lan <yixun.lan@amlogic.com>,
 Chuanhong Guo <gch981213@gmail.com>, Stefan Agner <stefan@agner.ch>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Paul Cercueil <paul@crapouillou.net>, Marek Vasut <marek.vasut@gmail.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 Frieder Schrempf <frieder.schrempf@kontron.de>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Anders Roxell <anders.roxell@linaro.org>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>,
 "Bean Huo \(beanhuo\)" <beanhuo@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Shivamurthy,

On Mon, 3 Jun 2019 12:43:28 +0000
"Shivamurthy Shastri (sshivamurthy)" <sshivamurthy@micron.com> wrote:

> Create onfi_helper object. This is base to turn ONFI code to generic.
> 
> Signed-off-by: Shivamurthy Shastri <sshivamurthy@micron.com>
> ---
>  include/linux/mtd/nand.h | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)
> 
> diff --git a/include/linux/mtd/nand.h b/include/linux/mtd/nand.h
> index 3cdf06cae8b6..645dde4c5797 100644
> --- a/include/linux/mtd/nand.h
> +++ b/include/linux/mtd/nand.h
> @@ -11,6 +11,7 @@
>  #define __LINUX_MTD_NAND_H
>  
>  #include <linux/mtd/mtd.h>
> +#include <linux/mtd/onfi.h>
>  
>  /**
>   * struct nand_memory_organization - Memory organization structure
> @@ -157,6 +158,24 @@ struct nand_ops {
>  	bool (*isbad)(struct nand_device *nand, const struct nand_pos *pos);
>  };
>  
> +/**
> + * struct onfi_helper - ONFI helper functions that should be implemented by
> + * specialized layers (raw NAND, SPI NAND, etc.)
> + * @page: Page number for ONFI parameter table
> + * @check_revision: Check ONFI revision number
> + * @parameter_page_read: Function to read parameter pages
> + * @init_intf_data: Initialize interface specific data or fixups
> + */
> +struct onfi_helper {
> +	u8 page;
> +	int (*check_revision)(struct nand_device *base,
> +			      struct nand_onfi_params *p, int *onfi_version);
> +	int (*parameter_page_read)(struct nand_device *base, u8 page,
> +				   void *buf, unsigned int len);
> +	int (*init_intf_data)(struct nand_device *base,
> +			      struct nand_onfi_params *p);
> +};
> +
>  /**
>   * struct nand_device - NAND device
>   * @mtd: MTD instance attached to the NAND device
> @@ -165,6 +184,7 @@ struct nand_ops {
>   * @rowconv: position to row address converter
>   * @bbt: bad block table info
>   * @ops: NAND operations attached to the NAND device
> + * @helper: Helper functions to detect and initialize ONFI NAND
>   *
>   * Generic NAND object. Specialized NAND layers (raw NAND, SPI NAND, OneNAND)
>   * should declare their own NAND object embedding a nand_device struct (that's
> @@ -183,6 +203,7 @@ struct nand_device {
>  	struct nand_row_converter rowconv;
>  	struct nand_bbt bbt;
>  	const struct nand_ops *ops;
> +	struct onfi_helper helper;

Sorry, but I don't think that's the right solution. When I said we
should have ONFI code shared I was thinking about the code that parses
the ONFI struct/data to extract nand_memory_organization bits or other
generic info, not something that would abstract how to retrieve the
ONFI param page. Clearly, the generic NAND layer is not supposed to
handle such protocol/low-level details.

Regards,

Boris

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
