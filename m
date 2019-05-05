Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FB2613E0B
	for <lists+linux-mtd@lfdr.de>; Sun,  5 May 2019 09:07:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=opojKr1kPKx0Ss9fMWTyH64yL8cJ5W7BrNUDpSkQlT4=; b=Pg1CwN0sPgsza7
	QLtFknSFp6m10aR0Jmpfkc9qKmd1VqvYHQVvIsQoPyCI1lbvhVIefGISGQktNmJ7gpEGCaw7jOSd2
	i7XQOjOs6xnIpCw8xPaFkUjbLCmlkCCZIhVyAa97qdQh1hvtpLwP/Bn5vIPMTChIlVyvyZhMJQqwy
	vfFEBvmAhYBWgg5jGqydARAvmeVsOEPadAxExPwqXcidMF/WWRydWBAnmytLSMuJDvWgyspIP5XIN
	sDZfp1njcAWFIyDlodan5eazzssX5dlEpT+5QgWOr6k6b8WFkMmQ0/E49dNpIc8rfr8cTTfNWDNTL
	TQ26st1SBI8jaPBPfvSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNBEx-0004FQ-01; Sun, 05 May 2019 07:07:15 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNBEa-0004Ex-Jx
 for linux-mtd@lists.infradead.org; Sun, 05 May 2019 07:06:54 +0000
X-UUID: 28f667fc4f2c49a287a48d1b7429f20b-20190504
X-UUID: 28f667fc4f2c49a287a48d1b7429f20b-20190504
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <xiaolei.li@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 965582540; Sat, 04 May 2019 23:06:45 -0800
Received: from MTKMBS32N1.mediatek.inc (172.27.4.71) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 5 May 2019 00:06:44 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS32N1.mediatek.inc
 (172.27.4.71) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Sun, 5 May 2019 15:06:41 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sun, 5 May 2019 15:06:40 +0800
Message-ID: <1557040000.26455.59.camel@mhfsdcap03>
Subject: Re: [PATCH v2 1/5] mtd: rawnand: mtk: Correct low level time
 calculation of r/w cycle
From: xiaolei li <xiaolei.li@mediatek.com>
To: Sasha Levin <sashal@kernel.org>
Date: Sun, 5 May 2019 15:06:40 +0800
In-Reply-To: <20190430103205.5175421744@mail.kernel.org>
References: <20190430100250.28083-2-xiaolei.li@mediatek.com>
 <20190430103205.5175421744@mail.kernel.org>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: B9B3AC740D21CB2D906577B0BCF6E19197523C342EA54B9C5971A556DB209DBF2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_000652_661198_E7EC4612 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: richard@nod.at, linux-mtd@lists.infradead.org, stable@vger.kernel.org,
 miquel.raynal@bootlin.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Sasha,

I am not sure if it is caused by raw NAND code path change.

Raw NAND code was moved from mtd/nand to mtd/nand/raw subdirectory since
kernel v4.17.

The fixing commit: edfee3619c49 mtd: nand: mtk:
add->setup_data_interface() hook exists before kernel v4.17.

@Miquel, do you know if some other raw NAND driver ever encountered this
case? Thanks.

On Tue, 2019-04-30 at 10:32 +0000, Sasha Levin wrote:
> Hi,
> 
> [This is an automated email]
> 
> This commit has been processed because it contains a "Fixes:" tag,
> fixing commit: edfee3619c49 mtd: nand: mtk: add ->setup_data_interface() hook.
> 
> The bot has tested the following trees: v5.0.10, v4.19.37, v4.14.114.
> 
> v5.0.10: Build OK!
> v4.19.37: Build OK!
> v4.14.114: Failed to apply! Possible dependencies:
>     Unable to calculate
> 
> 
> How should we proceed with this patch?
> 
> --
> Thanks,
> Sasha

Thanks,
Xiaolei


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
