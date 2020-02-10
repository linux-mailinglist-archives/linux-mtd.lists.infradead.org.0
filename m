Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCE3D1570F1
	for <lists+linux-mtd@lfdr.de>; Mon, 10 Feb 2020 09:41:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eqSulYpI8RYghXhBo9diG/VZ/CmWCpNNL4YvASI7Cb0=; b=fQS4ZpA6AcAL7/
	zmZfO/IcYSAQbRr4bpmiJskDJ4GKzVqr1DhdDMTpkRavydzvJ3msPfHM+QAH5I07Vhbbi8CRiB4sz
	ijw+ZMdSTRhWupWHexa9RzShlmWKHz+iVdtoKppsBgqHD6dQ5Dt3YDPDHWsYeLZJ9oaz4daIWZZi5
	jiZjtli1Irzmvd1SrV3guL15mM4ddsbS4mb7DuFNb66/P3sxPMxW1sttnqixzexKXGnbTzO28sisZ
	QwMGv8x/zQAkFk+PH+IQqLVyxJ6U2DL7zl0Z9NvwJ7Buh4SHLHJpWQS00oE7PxsDh+H0h0CdmC6s4
	IoSL+OGQpqmsW1GG1tSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j14dH-0003cY-Uc; Mon, 10 Feb 2020 08:41:31 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j14cq-0003Sp-OI; Mon, 10 Feb 2020 08:41:06 +0000
X-UUID: 78f00cbbde854adc8629ad60cc099217-20200210
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=Jme6XnUcV22sv+Lb0GfidwDPAVP5wJkTpFliBwJ3cpI=; 
 b=MlgjgnoIA4AD4sGad07cNjNs9aeX4kPOkUBvg6aJe/XqqKbp6z7t+WdI8EyBQG7wwk4xzFLVfTa+JAxwf9PZ2n7AHIwcbS7t1WZ32/TY3Vt36qp+4oPBYAJm/RO/vCS/hK5rMBvIQNeNet3kupcf44gHZJvloGaQBGVgtKNZf/Y=;
X-UUID: 78f00cbbde854adc8629ad60cc099217-20200210
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <yingjoe.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1163598211; Mon, 10 Feb 2020 00:40:59 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 10 Feb 2020 00:30:55 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by mtkcas08.mediatek.inc
 (172.21.101.126) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Mon, 10 Feb 2020 16:31:12 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 10 Feb 2020 16:31:12 +0800
Message-ID: <1581323455.2213.6.camel@mtksdaap41>
Subject: Re: [PATCH v2] mtd: mtk-quadspi: add support for DMA reading
From: Yingjoe Chen <yingjoe.chen@mediatek.com>
To: Chuanhong Guo <gch981213@gmail.com>
Date: Mon, 10 Feb 2020 16:30:55 +0800
In-Reply-To: <20200208084022.193231-1-gch981213@gmail.com>
References: <20200208084022.193231-1-gch981213@gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_004104_796155_322B26E2 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mtd@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Sat, 2020-02-08 at 16:40 +0800, Chuanhong Guo wrote:
> PIO reading mode on this controller is pretty inefficient
> (one cmd+addr+dummy sequence reads only one byte)
> This patch adds support for reading using DMA mode which increases
> reading speed from 1MB/s to 4MB/s
> 
> DMA busy checking is implemented with readl_poll_timeout because
> I don't have access to IRQ-related docs. The speed increment comes
> from those saved cmd+addr+dummy clocks.

Hi Chuanhong,

Thanks for your patch, I'm checking with Guochun to see if we could
release IRQ related information to you.


> This controller requires that DMA source/destination address and
> reading length should be 16-byte aligned. We use a bounce buffer if
> one of them is not aligned, read more than what we need, and copy
> data from corresponding buffer offset.

I've checked with our HW guys. The limitation is on DRAM only.
So for read we should check buffer and length to make sure it is
aligned, but don't need to check from.

Joe.C

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
