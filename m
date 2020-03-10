Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED794180696
	for <lists+linux-mtd@lfdr.de>; Tue, 10 Mar 2020 19:33:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CJXLn5Vl6dLVJyKE5H9TTDMqzlXF1pH+fnsGzdKO7fY=; b=lKG89C0uxxJTL4
	4aONJaMzvYO4FM8w9aW0gNnxKsz/IEgVNgD4s/ZCRni70AuhQyVaCdpxRdSbhyAKSY7se7sCnUZtN
	tD7QkPtS40s2yzdXMAhqGBg3WybSc2VdhEo6CxQmwsg/LqpxZ7FBORMo1jK5mpGdnuUDJgsxnFLeY
	28OCo/4srcPNF/mPZQcH9QYU665nIwkKz3jdklodgIq7whrUV1zsbAntTVFVQchTCDTylrYnlcHeq
	87YhMTGcqQX1Owu0f1upROSLIxouvP5zALWG/Xgm23yxRMNaVprFDN/81/URiFbUjMdPXYE1Ni9vr
	RY/0WbIS2g/t7jZkJ2AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBjhS-0006L0-CI; Tue, 10 Mar 2020 18:33:54 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBjeO-0003fC-DY; Tue, 10 Mar 2020 18:30:45 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id CFB7DC0006;
 Tue, 10 Mar 2020 18:30:40 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, vigneshr@ti.com,
 miquel.raynal@bootlin.com, han.xu@nxp.com, richard@nod.at,
 mripard@kernel.org, wens@csie.org, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com
Subject: Re: [PATCH 5/7] mtd: rawnand: qcom: Release resources on failure
 within qcom_nandc_alloc()
Date: Tue, 10 Mar 2020 19:30:40 +0100
Message-Id: <20200310183040.18252-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200227123749.24064-6-peter.ujfalusi@ti.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: 92c29840b69db0bec6155a7623e0b1725ffb8936
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_113044_623500_FC84C5B0 
X-CRM114-Status: UNSURE (   4.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
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
Cc: vkoul@kernel.org, linux-mtd@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, 2020-02-27 at 12:37:47 UTC, Peter Ujfalusi wrote:
> In case when DMA channel request or alloc_bam_transaction() fails,
> dma_unmap_single() and any channels already requested should be released.
> 
> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next, thanks.

Miquel

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
