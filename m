Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 656B31F9261
	for <lists+linux-mtd@lfdr.de>; Mon, 15 Jun 2020 10:59:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YJ7g52f4BoC1+j8amOX5edZ/NGS9OJySMo6yKTew7Bs=; b=eWcNo5tXpreVPS
	bQMKfMhcu4TeFAopwe+MZJXOUJT8O4as+PYUrlZSZo7w/L+A7dPu0kNurX/jZJvIjDG8SbI66dbFe
	csS6k+YANssbVV1cVF5jaoZ4/L8icHMyjfTm1cYIXJCO+oS476wrS5U/MQ8o+/DAf887rrJEP8W0M
	p9yFCtU6hqnRREOTVPHGyJlwC+uB20244OoQTqeltkVxWkQRHe8LW5qNCpDZzrx4m1pVAoXIWTOb3
	XCtFkrGjvfXyFioYEdVs2rVlmPwktunFOJCSLgWSvjHaQh3gNElv4e85tjPjMAkyUtt6cAaABNMd2
	RHQWI9yoCJww7SyDNl2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkkxx-0002fO-BA; Mon, 15 Jun 2020 08:59:41 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkkxn-0002f2-Fb
 for linux-mtd@lists.infradead.org; Mon, 15 Jun 2020 08:59:33 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 43EF6200015;
 Mon, 15 Jun 2020 08:59:27 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Kamal Dasu <kdasu.kdev@gmail.com>, computersforpeace@gmail.com,
 miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com
Subject: Re: [PATCH v2 2/2] mtd: rawnand: brcmnand: ECC error handling on EDU
 transfers
Date: Mon, 15 Jun 2020 10:59:25 +0200
Message-Id: <20200615085925.22266-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200612212902.21347-3-kdasu.kdev@gmail.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: 33d5c3d07abfc06a44fba577cec76fe8099a0cdc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_015931_655432_23880D39 
X-CRM114-Status: UNSURE (   8.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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
Cc: linux-mtd@lists.infradead.org, bcm-kernel-feedback-list@broadcom.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, 2020-06-12 at 21:29:02 UTC, Kamal Dasu wrote:
> Implement ECC correctable and uncorrectable error handling for EDU
> reads. If ECC correctable bitflips are encountered on EDU transfer,
> read page again using PIO. This is needed due to a NAND controller
> limitation where corrected data is not transferred to the DMA buffer
> on ECC error. This applies to ECC correctable errors that are reported
> by the controller hardware based on set number of bitflips threshold in
> the controller threshold register, bitflips below the threshold are
> corrected silently and are not reported by the controller hardware.
> 
> Fixes: a5d53ad26a8b ("mtd: rawnand: brcmnand: Add support for flash-edu for dma transfers")
> Signed-off-by: Kamal Dasu <kdasu.kdev@gmail.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next, thanks.

Miquel

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
