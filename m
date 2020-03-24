Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBBDF191C42
	for <lists+linux-mtd@lfdr.de>; Tue, 24 Mar 2020 22:52:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IaGps1j0HcZton46XPW14ECRpOeEre1SEj8B5iYyJeQ=; b=Jg2meT5RRKUiUS
	iLX9hwE0PBKX/NbaME+kLVaGDOTtODL3T9lbn7kwMjwwlAxHGqYopkby/nV4VPpbAcQA8W+OOn7W6
	i8hjbwuqzpZIKJ0dAk7Lwrn1rRn1bt8wbd04+dMZkGdI43lHpnwePZrruqKECSe+9OVtg8OQTynbQ
	AB7h5VDlp/XNrl3aibryyzFu/oCkyrOvdpzKooxd9yCHcIBPpgufBpyFtLYddy5l7NOSlqitmfjNm
	uMuAyBWFMqXhsIE4kFi4TLpVyTpnRA/+ZvADwlGn1BqqKHmlcATH3hXoFw+HR4KJSv+DNnFegF8jK
	WN6q3mvpWF/sxsI2b7Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGrTL-000833-Rd; Tue, 24 Mar 2020 21:52:31 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGrTB-000823-4O
 for linux-mtd@lists.infradead.org; Tue, 24 Mar 2020 21:52:23 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id C24AA200008;
 Tue, 24 Mar 2020 21:52:04 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Yoshio Furuyama <ytc-mb-yfuruyama7@kioxia.com>, miquel.raynal@bootlin.com,
 vigneshr@ti.com
Subject: Re: [PATCH v5 2/2] mtd: spinand: toshiba: Support for new Kioxia
 Serial NAND
Date: Tue, 24 Mar 2020 22:52:03 +0100
Message-Id: <20200324215203.14118-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <aa69e455beedc5ce0d7141359b9364ed8aec9e65.1584949601.git.ytc-mb-yfuruyama7@kioxia.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: 798fcdd010006e87b3154d6454c657af7b033002
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_145221_312690_CA609708 
X-CRM114-Status: UNSURE (   6.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, 2020-03-24 at 06:49:55 UTC, Yoshio Furuyama wrote:
> Add support for new Kioxia products.
> The new Kioxia products support program load x4 command, and have
> HOLD_D bit which is equivalent to QE bit.
> 
> Signed-off-by: Yoshio Furuyama <ytc-mb-yfuruyama7@kioxia.com>
> Reviewed-by: Frieder Schrempf <frieder.schrempf@kontron.de>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next, thanks.

Miquel

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
