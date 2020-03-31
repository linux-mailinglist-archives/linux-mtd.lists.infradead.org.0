Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2330C199E5F
	for <lists+linux-mtd@lfdr.de>; Tue, 31 Mar 2020 20:47:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k29jbMhuCJc2cm/wStkwNYtFM1F4Qd1bvZKD5U3sUuM=; b=BXswvBOUW/DKM0
	UkCuxDj380d6cF9WffKeIQmIBSiO47GTXVYYhJiIBMYcY9icD1lk3ockIEkSOTgDCJMnKr9CZUymD
	n9VNvbSOVromTGKrK/hmlp5ARJIKopOEmfpB3AoDNYpg1/yVuZxpNv9ddeXJqMfA+xQYOH8E9jQcR
	hgI9KZGP51tZdGK+n8b8CEc/HyAMjPGKSTm0/JLESqw+QSlcr8BCE0d4YGdYjpYXOWq7sbCl/PBKM
	+Z/r2KTh7Efnh0RSfKi9kXkxjZhU1Hnz1iCNWae8oCkr23lZZL1c+PJZYcGULb72pY4H4F84dcF+9
	LzheYZADjIkmaqZFqrbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJLvC-0005hF-LV; Tue, 31 Mar 2020 18:47:34 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJLv1-0005Ud-By; Tue, 31 Mar 2020 18:47:24 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 09D86291976;
 Tue, 31 Mar 2020 19:47:20 +0100 (BST)
Date: Tue, 31 Mar 2020 20:47:16 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Weijie Gao <weijie.gao@mediatek.com>
Subject: Re: [PATCH 1/2] mtd: rawnand: add driver support for MT7621 nand
 flash controller
Message-ID: <20200331204716.52f611db@collabora.com>
In-Reply-To: <1585678079-5999-1-git-send-email-weijie.gao@mediatek.com>
References: <1585678079-5999-1-git-send-email-weijie.gao@mediatek.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_114723_547722_038EE867 
X-CRM114-Status: GOOD (  10.94  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Anders Roxell <anders.roxell@linaro.org>,
 Vignesh Raghavendra <vigneshr@ti.com>, Arnd Bergmann <arnd@arndb.de>,
 Boris Brezillon <bbrezillon@kernel.org>, Richard Weinberger <richard@nod.at>,
 Brendan Higgins <brendanhiggins@google.com>, linux-kernel@vger.kernel.org,
 Frieder Schrempf <frieder.schrempf@kontron.de>, linux-mips@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mtd@lists.infradead.org,
 Mason Yang <masonccyang@mxic.com.tw>, Piotr Sroka <piotrs@cadence.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, 1 Apr 2020 02:07:58 +0800
Weijie Gao <weijie.gao@mediatek.com> wrote:

> This patch adds NAND flash controller driver for MediaTek MT7621 SoC.
> 
> The NAND flash controller is similar with controllers described in
> mtk_nand.c, except that the controller from MT7621 doesn't support DMA
> transmission, and some registers' offset and fields are different.
> 

Please don't duplicate driver the driver for those minor differences:
use regmap/reg_field to abstract reg field positions and make the DMA
optional.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
