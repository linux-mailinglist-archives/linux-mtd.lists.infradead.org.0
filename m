Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C29618073D
	for <lists+linux-mtd@lfdr.de>; Tue, 10 Mar 2020 19:46:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ItWVNeRjJtvAzjxp6LnBTEqQUQzbeuNEtRYA091rwKA=; b=mfFUHzsXRLrLb/
	1dmn21PkaWOR3BgAs29PqldbzHjauEP3sRE9ovOzJ80Xo5G/oC5FNY526FVf+JOpOWDlCgvhaxNqa
	8DaKSUncAs70G/2XMinD709Siz5JK83rB8Jo9YukZIa4yjhWhB/x8PnocOVyfgUPW9MiW9eeraYXd
	Mcx13uI7ePJ0U4qVMkJp1Vnx3AgG595ppdfxSWDj9w+9Mqh8ONQcH5fLlsSRCCg8J5FHfncF5sWMS
	dUS+8QFNQRKYMRvvHU6g2e63zdns/s0eUB0biWfd4/TtN/k3esrHst3ffoGzF76dXgZhODsd8QHj8
	1hsh6dkXDe5aSc6GgZqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBjti-00054H-V6; Tue, 10 Mar 2020 18:46:34 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBjhF-0006LZ-JC
 for linux-mtd@lists.infradead.org; Tue, 10 Mar 2020 18:33:43 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 67E8D20008;
 Tue, 10 Mar 2020 18:33:39 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Chuanhong Guo <gch981213@gmail.com>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Boris Brezillon <bbrezillon@kernel.org>
Subject: Re: [PATCH v4] mtd: nand: spi: rework detect procedure for different
 read id op
Date: Tue, 10 Mar 2020 19:33:38 +0100
Message-Id: <20200310183338.19961-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200208074439.146296-1-gch981213@gmail.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: f1541773af49ecd1edae29c8ac0775253a0b0760
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_113341_785366_8691FFF2 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Sat, 2020-02-08 at 07:43:50 UTC, Chuanhong Guo wrote:
> Currently there are 3 different variants of read_id implementation:
> 1. opcode only. Found in GD5FxGQ4xF.
> 2. opcode + 1 addr byte. Found in GD5GxGQ4xA/E
> 3. opcode + 1 dummy byte. Found in other currently supported chips.
> 
> Original implementation was for variant 1 and let detect function
> of chips with variant 2 and 3 to ignore the first byte. This isn't
> robust:
> 
> 1. For chips of variant 2, if SPI master doesn't keep MOSI low
> during read, chip will get a random id offset, and the entire id
> buffer will shift by that offset, causing detect failure.
> 
> 2. For chips of variant 1, if it happens to get a devid that equals
> to manufacture id of variant 2 or 3 chips, it'll get incorrectly
> detected.
> 
> This patch reworks detect procedure to address problems above. New
> logic do detection for all variants separatedly, in 1-2-3 order.
> Since all current detect methods do exactly the same id matching
> procedure, unify them into core.c and remove detect method from
> manufacture_ops.
> 
> Tested on GD5F1GQ4UAYIG and W25N01GVZEIG.
> 
> Signed-off-by: Chuanhong Guo <gch981213@gmail.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next, thanks.

Miquel

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
