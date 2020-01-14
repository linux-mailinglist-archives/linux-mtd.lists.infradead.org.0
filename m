Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84DBF13B064
	for <lists+linux-mtd@lfdr.de>; Tue, 14 Jan 2020 18:06:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SLoU0OKe7ssrdMBJDvt6Q+vcg7AhxgulbLFX9ZAjnOA=; b=O3p050BGOaJy6T
	Q+XYFS468tJfBDAtHodHGyRCJEhjXnY1cmP/rfy2Fzrf6ti6yzZ7WqNxoVatVjkurJ+o5h8L9d8tn
	1I3SHh/z9W2p2S6O3sLAB1KQlTZmNLROxFb9lB/xqnsf5wohUqBDmozD6TyzlPDJB3QYxrdGgNfT2
	3xdG8x8b9QOYH2HhonEXkIDwxottRYRFz/+ukCthDrIIAEX5gRjMIJCSdPPM8avzCqeUO7OsktABM
	J6tOrtjUcvz9U3eI5s0klqvkbTniuNWh/eZav1s7RjMy2OFkUMkN0ggfaTyeIAjgzp1RKA5FT1mMm
	aFyrPS3mYZpRm1EukvGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irPdn-0000Oq-4W; Tue, 14 Jan 2020 17:06:07 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irPcQ-0006k4-0B
 for linux-mtd@lists.infradead.org; Tue, 14 Jan 2020 17:04:46 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 7814C200002;
 Tue, 14 Jan 2020 17:04:37 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Robert Marko <robert.marko@sartura.hr>, miquel.raynal@bootlin.com,
 richard@nod.at, dwmw2@infradead.org, computersforpeace@gmail.com,
 marek.vasut@gmail.com, vigneshr@ti.com, frieder.schrempf@kontron.de,
 bbrezillon@kernel.org, tmcmc-mb-yfuruyama7@ml.toshiba.co.jp,
 linux-mtd@lists.infradead.org
Subject: Re: [PATCH] mtd: nand: spi: add support for Toshiba TC58CVG2S0HRAIJ
Date: Tue, 14 Jan 2020 18:04:31 +0100
Message-Id: <20200114170431.1201-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200103161427.2630067-1-robert.marko@sartura.hr>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: 28fab37708ce0476fdf9c9826ae8f6cbf3877777
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_090442_206491_1123D910 
X-CRM114-Status: UNSURE (   6.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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
Cc: Luka Perkov <luka.perkov@sartura.hr>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, 2020-01-03 at 16:14:27 UTC, Robert Marko wrote:
> Toshiba recently launched new revisions of their serial SLC NAND series.
> TC58CVG2S0HRAIJ is a refresh of previous series with minor improvements.
> Basic parameters are same so lets add support for this new revision.
> 
> Datasheet: https://business.kioxia.com/info/docget.jsp?did=58601&prodName=TC58CVG2S0HRAIJ
> 
> Tested under kernel 5.4.7.
> 
> Signed-off-by: Robert Marko <robert.marko@sartura.hr>
> Cc: Luka Perkov <luka.perkov@sartura.hr>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next, thanks.

Miquel

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
