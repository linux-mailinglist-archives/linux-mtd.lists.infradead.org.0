Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD771E7C20
	for <lists+linux-mtd@lfdr.de>; Fri, 29 May 2020 13:41:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Dem9wOvu3fsqmv6TOXVrNVxrOC2ucjjtNT5jPEgKY4=; b=Gcm2/qmIHBTqeB
	+Rhe2JNWMEr0LrNKe7Hlc0enIlE33bGLb3/iSh2ztv6NQJWKBzTHJ3xgHuqB91LJ+R6KXyMmdshDl
	FpVkkc7q3Rl1uTNQEkQkYBGXzXL4HcNSM5D6Il4gUwjcCnMiHTHRfwlPCWuLssYGN1RF7QhCB9Niu
	DoAVXM2j8P9xUBRS50lpRvEyxnF/q6gs/KNFfIMRnvdDRNkqpWKd0W169qx3FOf7DzjDtqz1HnxOw
	XAgWGi6vEtGmyqf9ylDiFXAJjLMA+QDMP7uvSEeN5ADhnfXyE+b83UaqfVgdjUMT2aGeJ5HlN9Vh/
	e7ZEp5gJVpR1mOo9c8Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jedO1-0005S2-J7; Fri, 29 May 2020 11:41:17 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jedNt-0005Ri-RG
 for linux-mtd@lists.infradead.org; Fri, 29 May 2020 11:41:11 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 6A9B82A44BC;
 Fri, 29 May 2020 12:41:08 +0100 (BST)
Date: Fri, 29 May 2020 13:41:05 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v7 28/28] mtd: rawnand: Allocate the interface
 configurations dynamically
Message-ID: <20200529134105.12d5fc3a@collabora.com>
In-Reply-To: <20200529133704.757ac63d@collabora.com>
References: <20200529111322.7184-1-miquel.raynal@bootlin.com>
 <20200529111322.7184-29-miquel.raynal@bootlin.com>
 <20200529133704.757ac63d@collabora.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_044110_029036_EC967AE7 
X-CRM114-Status: GOOD (  11.34  )
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
Cc: Michal Simek <monstr@monstr.eu>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, 29 May 2020 13:37:04 +0200
Boris Brezillon <boris.brezillon@collabora.com> wrote:

> > +/* Default/reset data interface */
> > +const struct nand_interface_config *nand_get_reset_interface(void);  
> 
> nand_get_reset_interface_config(), and I'm not sure you need to
> expose that one. I'd expect it to be used only by the core.

Just to be clear, I mean it should be defined in internal.h, not
rawnand.h.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
