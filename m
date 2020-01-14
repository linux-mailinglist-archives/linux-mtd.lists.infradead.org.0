Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7AA113B06B
	for <lists+linux-mtd@lfdr.de>; Tue, 14 Jan 2020 18:06:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u1M5ConzHtyZyVI9qxZRjBZs1uKi7+Lcy7irmS30WiU=; b=i24C4RLLbF/V1i
	5cLaaLPkXerhtnSetPfc2jISkRXfAlY+8ma6ud6H5NVelBkWqi1w9BKjsx+Mt5VsfLsiHy64nGrhM
	a73NdPkc3iQammifbpVivkI7qklyW1fe63navWMujRxfzwS0J8RUeXSVYcd/fH7wn38jvM8763yIU
	LxAdjEbRlCywB35ZwTxybs2NcN4i06FP+ly7pedRhcJ0fYyor4jtXd9MAbd/IUnYPflyhCYi7sRRK
	pP7slwnL5CSNhbA1oi8gnHj3VtkbC7DADBx+oRhfC5ZO0RVAIo2ctb6kHuQ2JC0Ffi/AJWv1WaJe5
	hVjHlqWhYtV6p3lfxw/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irPeS-0000xj-W7; Tue, 14 Jan 2020 17:06:49 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irPcp-0007LO-Tc
 for linux-mtd@lists.infradead.org; Tue, 14 Jan 2020 17:05:13 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 76439100004;
 Tue, 14 Jan 2020 17:04:53 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: YueHaibing <yuehaibing@huawei.com>, miquel.raynal@bootlin.com,
 richard@nod.at, vigneshr@ti.com, frieder.schrempf@kontron.de,
 masonccyang@mxic.com.tw, allison@lohutok.net, tglx@linutronix.de
Subject: Re: [PATCH v2 -next] mtd: rawnand: macronix: Use match_string()
 helper to simplify the code
Date: Tue, 14 Jan 2020 18:04:51 +0100
Message-Id: <20200114170451.1291-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191231013648.19124-1-yuehaibing@huawei.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: 2bdb182c68b89635063b010376ecba97eaf48212
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_090508_174034_D8ACCF71 
X-CRM114-Status: UNSURE (   5.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
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
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, 2019-12-31 at 01:36:48 UTC, YueHaibing wrote:
> match_string() returns the array index of a matching string.
> Use it instead of the open-coded implementation.
> 
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next, thanks.

Miquel

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
