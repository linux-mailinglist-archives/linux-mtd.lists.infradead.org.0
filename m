Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 477071E774C
	for <lists+linux-mtd@lfdr.de>; Fri, 29 May 2020 09:44:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ClB31juFNaCF1cweG/fwqSvksfxBjK+VCPiYUT6JAMw=; b=A6nsVVmIIZXTcL
	/CAnsxd/v/36u2Kp1aL1hAXN/f8TlVAekvibzSPjVstGkBaUh9GplrHUxksv3F42PC/NLVqCl07MW
	u+BZs7tDUoPeOh2ihsFhgvaMHjydT+rOpKVICl+DggDmG/E9rSj4+6+jxMK/hcCS4kr2FG3LZXPBy
	MxfNQUnnOkG5MBy7c2N6Cbod8JPooh9WyxesP7KG7sqHYT/ZXtGdY0CfJFARcIRuHjnCLhv4Ag+BX
	jKEILhNNmV6s4T9wgFxIXZpH33y/e1gv4srZRsrTuBdpIviwJN65q7eBr0dHYCKPqY8m2iuo5p6tK
	Ixf29e1Pbpn0TCKoVSBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeZgq-00071F-LZ; Fri, 29 May 2020 07:44:28 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeZgk-00070k-9J
 for linux-mtd@lists.infradead.org; Fri, 29 May 2020 07:44:23 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:b93f:9fae:b276:a89a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id C1EA32A05E6;
 Fri, 29 May 2020 08:44:20 +0100 (BST)
Date: Fri, 29 May 2020 09:44:17 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v6 17/30] mtd: rawnand: s/data_interface/interface_config/
Message-ID: <20200529094417.113ddc38@collabora.com>
In-Reply-To: <20200528231612.8958-18-miquel.raynal@bootlin.com>
References: <20200528231612.8958-1-miquel.raynal@bootlin.com>
 <20200528231612.8958-18-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_004422_455826_C9854FE2 
X-CRM114-Status: UNSURE (   8.02  )
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

>   */
> -static int nand_choose_data_interface(struct nand_chip *chip)
> +static int nand_choose_interface(struct nand_chip *chip)

nand_choose_interface_config().

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
