Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0C2FCC00E
	for <lists+linux-mtd@lfdr.de>; Fri,  4 Oct 2019 18:05:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yO6Yc+opaMtVWI9nOwi+gcF2stkHU9dv3PA4lKZUXlc=; b=kRuEtsSn/3oOAN
	UptJ0YkmAjsK73WTFirLgsadFj6JocmWIaDXXrkPdUv7patG9tyZfLeLmZuxe7X/xf8528J0QrwUJ
	GufjBxMEtdRjATGH568wax1yZ3ck/0g0hEtVyZbndzvShij929LaPaeMu12KKlBYFq7U16RnbrOvz
	x6bZhVho+Ng2qZsKPCpJu1Y1wc0sRciaxH0EBZmjkWyFHIwNNkPUGfw8+3VkHcxzZKQ1D3aLyFGs5
	WXnEHFLYymETiUpzp2eybWHgMY+RwBKNxrM5xkQm/iU0QMQVaeO2vZIIi3XFvCxFDan2ZoXXbG/OJ
	ayt50n2auU+HytxVHkVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGQ4w-0003HW-Rb; Fri, 04 Oct 2019 16:05:14 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGQ4X-000396-9Q
 for linux-mtd@lists.infradead.org; Fri, 04 Oct 2019 16:04:51 +0000
X-Originating-IP: 93.23.105.117
Received: from xps13.stephanxp.local (117.105.23.93.rev.sfr.net
 [93.23.105.117]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 164A524000A;
 Fri,  4 Oct 2019 16:04:44 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Piotr Sroka <piotrs@cadence.com>
Subject: Re: [v2] mtd: rawnand: Change calculating of position page containing
 BBM
Date: Fri,  4 Oct 2019 18:04:43 +0200
Message-Id: <20191004160443.6258-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190924055439.4212-1-piotrs@cadence.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: a3c4c2339f8948b0f578e938970303a7372e60c0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_090449_860522_A1F5D264 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Vignesh Raghavendra <vigneshr@ti.com>, Boris Brezillon <bbrezillon@kernel.org>,
 Richard Weinberger <richard@nod.at>, Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Marek Vasut <marek.vasut@gmail.com>, linux-mtd@lists.infradead.org,
 Frieder Schrempf <frieder.schrempf@kontron.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, 2019-09-24 at 05:54:31 UTC, Piotr Sroka wrote:
> Change calculating of position page containing BBM
> 
> If none of BBM flags are set then function nand_bbm_get_next_page 
> reports EINVAL. It causes that BBM is not read at all during scanning
> factory bad blocks. The result is that the BBT table is build without 
> checking factory BBM at all. For Micron flash memories none of these 
> flags are set if page size is different than 2048 bytes.
> 
> Address this regression by:
> - adding NAND_BBM_FIRSTPAGE chip flag without any condition. It solves
>   issue only for Micron devices.
> - changing the nand_bbm_get_next_page_function. It will return 0 
>   if no of BBM flag is set and page parameter is 0. After that modification
>   way of discovering factory bad blocks will work similar as in kernel 
>   version 5.1.
> 
> Cc: stable@vger.kernel.org
> Fixes: f90da7818b14 (mtd: rawnand: Support bad block markers in first, second or last page)
> Signed-off-by: Piotr Sroka <piotrs@cadence.com>
> Reviewed-by: Frieder Schrempf <frieder.schrempf@kontron.de>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next, thanks.

Miquel

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
