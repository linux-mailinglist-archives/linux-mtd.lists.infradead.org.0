Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF9921E1D9A
	for <lists+linux-mtd@lfdr.de>; Tue, 26 May 2020 10:46:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fZmi4YG4510GNCyKWtD04XmgzWdDW/V63uEhfyd8Iuc=; b=BLM7FNXia5rtfv
	gYOI+4JQEbqfZQPhTtzdKN1yLCl8EjueswWp/DwSC/Wk/jj83NK21tlgBQ7Zifqsnm3aayKTvGJ/y
	dzY4g68gUPKnwVtvOGbnOG21o6568AigMW3jblFknD7O8w4KeyiS2ZW+4LbSzSPEsYM2OqwKRuFt0
	wrIRhlaKCliBRs+HjrDDk+GOrXp/1qNo8IwipO0xnMniw7+S2A1v9ha+SL1riB6YgSZvqfyAnCkk0
	AmKFWKVRQMYlu3L5OjU8b87HvL0sMkxa6l6Qu5FI0vzFB6JuPG1iI8s+PYCToSih+s30itHs2tTJE
	PR6EStUUYOIAHJMzMO+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdVEU-0003zM-8U; Tue, 26 May 2020 08:46:46 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdVEL-0003yk-Bq
 for linux-mtd@lists.infradead.org; Tue, 26 May 2020 08:46:39 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04Q8kT6X068476;
 Tue, 26 May 2020 03:46:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1590482789;
 bh=0Y+nhVgwiEkxt0mUjsYykJjEaX7tRpeEpMLVHzZ+DNo=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=MBeddPfvkWYbQK5rg0wdmK+J1K0CaiHvzKIlC2eQ+rLbwImma31zzyfLRHlMNTibG
 JaMnPviNBJQhbcTHSZrHh5+fcKs54ZWfC7rhsz30mtDNaB8p/r+UM0dx4PZee8lb6N
 aXLuXXis2fFrBXsCQkZikQIMbTuZKRQQ5HNRv9yY=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04Q8kTJN097919
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 26 May 2020 03:46:29 -0500
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 26
 May 2020 03:46:28 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 26 May 2020 03:46:28 -0500
Received: from a0132425.dhcp.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04Q8kQPC063391; 
 Tue, 26 May 2020 03:46:27 -0500
From: Vignesh Raghavendra <vigneshr@ti.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>, "Gustavo A. R. Silva"
 <gustavoars@kernel.org>, Richard Weinberger <richard@nod.at>
Subject: Re: [PATCH] mtd: Replace zero-length array with flexible-array
Date: Tue, 26 May 2020 14:16:23 +0530
Message-ID: <159048016213.21698.5509230411205527625.b4-ty@ti.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200507190033.GA15215@embeddedor>
References: <20200507190033.GA15215@embeddedor>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_014637_540980_280E49AF 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-mtd@lists.infradead.org, Vignesh Raghavendra <vigneshr@ti.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, 7 May 2020 14:00:33 -0500, Gustavo A. R. Silva wrote:
> The current codebase makes use of the zero-length array language
> extension to the C90 standard, but the preferred mechanism to declare
> variable-length types such as these ones is a flexible array member[1][2],
> introduced in C99:
> 
> struct foo {
>         int stuff;
>         struct boo array[];
> };
> 
> [...]

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git cfi/next, thanks!


Regards
-- 
Vignesh


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
