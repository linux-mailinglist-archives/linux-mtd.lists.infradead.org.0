Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6E951E77EB
	for <lists+linux-mtd@lfdr.de>; Fri, 29 May 2020 10:11:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AEkWPO5HdIqibbajyCMXiaL4Azx9dmcZZNeYorf5nnI=; b=odygbf5QBFmgUc
	kNquqpZyniTDpbKS0xrse7eL3fTzauhRmsq7nJNJlnPa3BrchKQVgUPd2yfHRUtjFnC0QunSMa7xI
	vohmPXso3H5nJqxc2yQf8W95GcEHmLuXTh5NC8RLXMciktnHehb/BBxiV02GMPNhBK4K2SsTZXj1I
	nYgNDIn1prqi8I7YsOClfePbMhTzstc7PrH3k3UBsoXUvFSlZAMgRm5xEClnIVEqvNDpDDtm1bM/Z
	RQKIO/WKTO3z2jVTc3E/DFp5Gvatll93UqttSe4TQS6ohQWfIoVSVoX0bXM/pg9Kfr0UB1FjMimlq
	R+KZQ/PX0IdAeKqXiHpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jea6p-0008VV-80; Fri, 29 May 2020 08:11:19 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jea6i-0008Uz-QG
 for linux-mtd@lists.infradead.org; Fri, 29 May 2020 08:11:14 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:b93f:9fae:b276:a89a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 6AD3D26CDAA;
 Fri, 29 May 2020 09:11:11 +0100 (BST)
Date: Fri, 29 May 2020 10:11:07 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v6 17/30] mtd: rawnand: s/data_interface/interface_config/
Message-ID: <20200529101107.6dadcfd5@collabora.com>
In-Reply-To: <20200529094755.6b53f88a@collabora.com>
References: <20200528231612.8958-1-miquel.raynal@bootlin.com>
 <20200528231612.8958-18-miquel.raynal@bootlin.com>
 <20200529094755.6b53f88a@collabora.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_011112_978642_F67AA213 
X-CRM114-Status: GOOD (  14.40  )
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

On Fri, 29 May 2020 09:47:55 +0200
Boris Brezillon <boris.brezillon@collabora.com> wrote:

> On Fri, 29 May 2020 01:15:59 +0200
> Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> 
> > From: Boris Brezillon <boris.brezillon@collabora.com>
> > 
> > The name/suffix data_interface is a bit misleading in that the field
> > or functions actually represent a configuration that can be applied by
> > the controller/chip. Let's rename all fields/functions/hooks that are
> > worth renaming.
> > 
> > Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> > Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>  
> 
> I know it's painful to move that one, but I think it should be at the
> beginning of the series so the functions/fields you introduce have the
> right name from the start.

Hm, maybe I'm wrong and you don't introduce any new interface-related
functions/fields before that one.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
