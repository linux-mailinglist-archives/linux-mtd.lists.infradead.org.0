Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B02818403B
	for <lists+linux-mtd@lfdr.de>; Fri, 13 Mar 2020 06:21:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HFK9fFClmcvnmxIX7NBcvg9RpeTB2khz1MPBeeitxog=; b=lQkKpRTw1um2AXZrmxHNzjC6iK
	yswKsWVLxLRc/n9nDFzwr9x1DyFziiGbXMeEu9CD+7NMRY4wWnudV/Ua+uD/GxePfMULab2p9R3dP
	iDhGCYTtIq8Tle5zXskyjyxh89bEWX03VqjBifXuU/5TMZ4senT2WxH7Z1f0cg1FfLHyNyFG4a+/c
	SuuTvC/AVYY+keUxc6mBsyutiWEoEvaOzKDFx8wn4AuEOe3Uy1cVp3U+SUKgPsudyRj5xtDRebN7q
	Kz+RVT/jG+Sj2clolH5+oIQ7PUo7kX+RWWZp+qg0iFkcTbb+wuxEWSknEYnghAUL2Yj7M6w8U+o43
	s1J3EzJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCcka-0000vE-Vk; Fri, 13 Mar 2020 05:20:48 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCckT-0000uH-G0
 for linux-mtd@lists.infradead.org; Fri, 13 Mar 2020 05:20:43 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02D5KYv0073291;
 Fri, 13 Mar 2020 00:20:34 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1584076834;
 bh=f+i2LDPnRQjDYZ2F+1deYEfkefnRV6U++/sWTXuRI8A=;
 h=Subject:To:References:From:Date:In-Reply-To;
 b=mSCAiM4Ed4myvYAdihfaNcAFgLQziqs9IoDv4vMWUFftCiddfoW/OuvssZE3hGp0f
 Io1TDmzBlYHCJsRlZdn+mtT98O/y360nY85AVWIvnI3y3xwmMIhXogtfHEfulgTnzi
 5/oHmzbtmaQj0alUTlt5EUfxXEujyFgbmlbGY3nI=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 02D5KYaq062936
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 13 Mar 2020 00:20:34 -0500
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 13
 Mar 2020 00:20:33 -0500
Received: from localhost.localdomain (10.64.41.19) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 13 Mar 2020 00:20:33 -0500
Received: from [172.24.145.136] (ileax41-snat.itg.ti.com [10.172.224.153])
 by localhost.localdomain (8.15.2/8.15.2) with ESMTP id 02D5KTsC058605;
 Fri, 13 Mar 2020 00:20:31 -0500
Subject: Re: [PATCH v2] mtd: hyperbus: Add proper error message for missing
 compatible
To: Dirk Behme <dirk.behme@de.bosch.com>, <sergei.shtylyov@cogentembedded.com>,
 <linux-mtd@lists.infradead.org>
References: <20200204071043.3602-1-dirk.behme@de.bosch.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <43ad9efd-a88f-0e52-5b2b-2c27d577ef94@ti.com>
Date: Fri, 13 Mar 2020 10:51:07 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200204071043.3602-1-dirk.behme@de.bosch.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_222041_618759_5EDB9AE7 
X-CRM114-Status: UNSURE (   8.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



On 04/02/20 12:40 pm, Dirk Behme wrote:
> In case the compatible "cypress,hyperflash" is not given
> output a proper error message.
> 
> Signed-off-by: Dirk Behme <dirk.behme@de.bosch.com>

Thanks!

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git cfi/next

Regards
Vignesh

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
