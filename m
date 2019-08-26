Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 853089CFFB
	for <lists+linux-mtd@lfdr.de>; Mon, 26 Aug 2019 15:02:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oBqDmuc8Cch6jITMED+hdmQ3Fzr28V5lhPLmNXVE8PA=; b=ZLTOrtVbgG1hE1
	ZjnTcZks2xcmhvCMA4/BtHz8LOfleYyN3qKbIsvW4JePN7efLQXnaPIL7q1rqrzwAGuRx0uC2IUCU
	LYQ/NwnWjZM9sm9QH9tnConlcaD+U78P0empZ5z38GuWSIxsKSqS/gTccWNOlx3a0OYyxNK3eqh5O
	G8624aFnF2zYfbmumfL+p7MKvX1s481dOry6kMWmxZ9rlnv9Oz2/h9Pw7izY/o4UaS5jqdOHJ/cBs
	Y8vZVSyIJwIDn9ev44GMjBzaPsKPQR98MqlEIwYq7+LCc0UhIcFM2Un+NCdmRzfjnOpMjRGKGKeLq
	rCzuefmuQpBROLeVdA2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2EdC-0003br-8N; Mon, 26 Aug 2019 13:01:58 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Eb7-0007nS-2R
 for linux-mtd@lists.infradead.org; Mon, 26 Aug 2019 12:59:51 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id D0561FF811;
 Mon, 26 Aug 2019 12:59:33 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Mason Yang <masonccyang@mxic.com.tw>, miquel.raynal@bootlin.com,
 richard@nod.at, marek.vasut@gmail.com, dwmw2@infradead.org,
 bbrezillon@kernel.org, computersforpeace@gmail.com, vigneshr@ti.com,
 robh+dt@kernel.org, stefan@agner.ch, mark.rutland@arm.com
Subject: Re: [PATCH v7 2/2] dt-bindings: mtd: Document Macronix raw NAND
 controller bindings
Date: Mon, 26 Aug 2019 14:59:32 +0200
Message-Id: <20190826125932.15051-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <1566199149-5669-3-git-send-email-masonccyang@mxic.com.tw>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: 220280708a2349bc8dd61ab029483d65440a5aa0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_055949_399913_585D6AE7 
X-CRM114-Status: UNSURE (   5.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, anders.roxell@linaro.org, juliensu@mxic.com.tw,
 linux-kernel@vger.kernel.org, paul@crapouillou.net, paul.burton@mips.com,
 liang.yang@amlogic.com, linux-mtd@lists.infradead.org,
 christophe.kerello@st.com, lee.jones@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, 2019-08-19 at 07:19:09 UTC, Mason Yang wrote:
> Document the bindings used by the Macronix raw NAND controller.
> 
> Signed-off-by: Mason Yang <masonccyang@mxic.com.tw>
> Reviewed-by: Rob Herring <robh@kernel.org>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next, thanks.

Miquel

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
