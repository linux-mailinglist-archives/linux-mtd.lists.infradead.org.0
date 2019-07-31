Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65BCA7C1C0
	for <lists+linux-mtd@lfdr.de>; Wed, 31 Jul 2019 14:41:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3LpD8w1thMrxHmW5nGJbjsbNKEfXmKJgZCNV25WPUu4=; b=eZzoFgfbJyOtKf
	U9IH7dzTJpi4Pvy+9gJFiMxjAAwIkS64St0ZrZ1I37NLQGex7Knb/2KJFqqebR+oXb0TYjrvLlyNT
	Er1w5Tf/IblxT4JvGdSCY8XOTifTxnQynXDB3+K5/dUyjj4i+UPMSiWeU7MOTE7SYX83MXDodURLw
	7GvD4sE/hs+/pg4de9rs5rL40fy3XMLiP3/p0kSw3J3upVVcz9h0RxhCSHnfPHo0AYUnbLpuEVaZS
	e8HWt4hJt324urBG+hUeQmeMvAimoc6356VdDa8nEzyK/0KTgAOJcnn0inio3Hjtwh9zcdvWql4WA
	YhJo7igAgCa6L3fv2WXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsnv1-0001ze-Lk; Wed, 31 Jul 2019 12:41:23 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsnsE-0006JF-1R
 for linux-mtd@lists.infradead.org; Wed, 31 Jul 2019 12:38:32 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 7BFEF2853E3;
 Wed, 31 Jul 2019 13:38:26 +0100 (BST)
Date: Wed, 31 Jul 2019 14:38:22 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Naga Sureshkumar Relli <nagasure@xilinx.com>
Subject: Re: [PATCH 5/6] mtd: spi-nor: Add s3an_post_sfdp_fixups()
Message-ID: <20190731143822.79fa7c82@collabora.com>
In-Reply-To: <MN2PR02MB5727FF8617B1A2FC89739601AFDF0@MN2PR02MB5727.namprd02.prod.outlook.com>
References: <20190731091145.27374-1-tudor.ambarus@microchip.com>
 <20190731091145.27374-6-tudor.ambarus@microchip.com>
 <MN2PR02MB5727FF8617B1A2FC89739601AFDF0@MN2PR02MB5727.namprd02.prod.outlook.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_053830_245121_9050CAC4 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
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
Cc: "vigneshr@ti.com" <vigneshr@ti.com>,
 "Tudor.Ambarus@microchip.com" <Tudor.Ambarus@microchip.com>,
 "richard@nod.at" <richard@nod.at>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "marek.vasut@gmail.com" <marek.vasut@gmail.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "miquel.raynal@bootlin.com" <miquel.raynal@bootlin.com>,
 "computersforpeace@gmail.com" <computersforpeace@gmail.com>,
 "dwmw2@infradead.org" <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, 31 Jul 2019 12:31:19 +0000
Naga Sureshkumar Relli <nagasure@xilinx.com> wrote:

> Hi Tudor,
> 
> Thanks for the updates. With these kind of updates, we can add Vendor specific
> Code easily, like Xilinx Dual parallel and stacked modes.
> In these configurations we need to tweak the nor parameters like page_size, sectors etc.
> So with the help of these patches. we can easily update these parameters.

Absolutely not. This is just a solution to recover from broken SFDP
tables.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
