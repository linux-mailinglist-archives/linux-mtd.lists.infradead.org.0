Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D7451E6463
	for <lists+linux-mtd@lfdr.de>; Thu, 28 May 2020 16:46:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L31d+91h9GL6wkjXSCM/27uX9H6aF/4NOV/2ocExWWg=; b=c0+2Brp1Kq19U0
	aFn9Im2TKr1Vc28mNqvEF9osGaXsoeA6bZ9VkgOf1d/C2kBwSI/YZ2FqkQtyEUGW7eaCC6T9XrMPw
	GgcwMC3BaieSJUseoReSjpJoVulPwt6VGj1t3R50i2iOa0zAE30NEHFvYx0JM4FzcoH+xPoYT5DWX
	9yR/IalWNhtCfvqpj2c13NpUk0J+cDlVDTrQ/uqbyOedOzEy43z7CtxtEFXzfDgMbE1nCoQF0sm48
	L5zf5SnalfEQIDRAgG3WTm59sgmWqzYZn59WyATes7+BQfniPbCujG1Q2EqqaVDMEuoEEIq5xv29c
	jU1Yjo3RnQn+tiuYDBKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeJnw-0001Ni-5t; Thu, 28 May 2020 14:46:44 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeJn0-0000jo-BZ; Thu, 28 May 2020 14:45:47 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 620552A3D6A;
 Thu, 28 May 2020 15:45:44 +0100 (BST)
Date: Thu, 28 May 2020 16:45:41 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v6 18/18] mtd: rawnand: Move generic bits to the ECC
 framework
Message-ID: <20200528164541.106bbde9@collabora.com>
In-Reply-To: <20200528113113.9166-19-miquel.raynal@bootlin.com>
References: <20200528113113.9166-1-miquel.raynal@bootlin.com>
 <20200528113113.9166-19-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_074546_554579_6E15326E 
X-CRM114-Status: GOOD (  12.96  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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

> diff --git a/include/linux/mtd/nand.h b/include/linux/mtd/nand.h
> index ce936ffb9f42..1cc6d71c2b45 100644
> --- a/include/linux/mtd/nand.h
> +++ b/include/linux/mtd/nand.h
> @@ -127,6 +127,10 @@ struct nand_page_io_req {
>  	int mode;
>  };
>  
> +extern const struct mtd_ooblayout_ops nand_ooblayout_sp_ops;
> +extern const struct mtd_ooblayout_ops nand_ooblayout_lp_ops;
> +extern const struct mtd_ooblayout_ops nand_ooblayout_lp_hamming_ops;

While we move that to the generic NAND layer, can we hide that behind
helpers so we don't have the objects directly exposed?

const struct mtd_ooblayout_ops *nand_get_small_page_layout();
const struct mtd_ooblayout_ops *nand_get_large_page_layout();
const struct mtd_ooblayout_ops *nand_get_large_page_hamming_layout();

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
