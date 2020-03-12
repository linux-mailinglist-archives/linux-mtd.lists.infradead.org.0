Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1D18182C16
	for <lists+linux-mtd@lfdr.de>; Thu, 12 Mar 2020 10:11:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o/oP4Fo+hofGRe+DvYFiqIACU72JwFrGkSOwlAgi3Z4=; b=VXAP8UfBmc0Di9
	LCGP+EBQKTiBYL3+FkJjjh4LOAcEtPyzPDALOTAr59MEAlFSf88zsI844lSKrcXa7OhKXFNoS4YRs
	QBmJc/pCUSVWKAoFNfN1xk5JaIGTEVv3pEsT198aOh3FKpAkXyQohhNXbbTzZ5/TrwuGZe4nk5iTU
	m6I6LdnJEaJbtzI0r3/OLCzz448q8C7BlQPghgD52kWiymafx6e9ejzTIVdoaTy4F7uovnD9jcVtN
	OmoH+jvzhEpCdc3QF3GGucA/l3QVzTQz7gnLnZqM5/QUd8yUlw8JkLyPdQGgw41MumAlYXyOQvlqF
	6xLkC/bHpPr1g2nus6RA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCJsW-0007KW-IK; Thu, 12 Mar 2020 09:11:44 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCJrq-0006pQ-3P
 for linux-mtd@lists.infradead.org; Thu, 12 Mar 2020 09:11:05 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02C9AhfS125560;
 Thu, 12 Mar 2020 04:10:43 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1584004243;
 bh=MHt9ab3+GqZno+m0UV4tuO8q4TZo8Oa2GK1pWgIO5KE=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=C55kopvRarrE6IQqez8laZVQqNwsGbrP2Ows2y7ekpVa4GDRfmT7y5h58Zg+LiGt2
 GsAaHAbR0JQ13pbz2aE3ZgYHQoMyGA531w5VW8Rb6YbDrzqCcZEdEc07yO+GQ4vP0L
 ypGTEgHl/FkI9JX2ZLa4fuNgR1G45IfMijZiF5dk=
Received: from DFLE108.ent.ti.com (dfle108.ent.ti.com [10.64.6.29])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02C9Ahic074961;
 Thu, 12 Mar 2020 04:10:43 -0500
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 12
 Mar 2020 04:10:42 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 12 Mar 2020 04:10:42 -0500
Received: from [172.24.145.136] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02C9Aec7007085;
 Thu, 12 Mar 2020 04:10:41 -0500
Subject: Re: [PATCH v2] MAINTAINERS: Add staging branch for HyperBus
To: Miquel Raynal <miquel.raynal@bootlin.com>, Richard Weinberger
 <richard@nod.at>, Stephen Rothwell <sfr@canb.auug.org.au>
References: <20200227051212.15496-1-vigneshr@ti.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <ec8123f1-b855-6c03-8110-0e22eb42152a@ti.com>
Date: Thu, 12 Mar 2020 14:41:19 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200227051212.15496-1-vigneshr@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_021102_252724_AA7100C0 
X-CRM114-Status: GOOD (  14.56  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
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
Cc: linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Stephen,

On 27/02/20 10:42 am, Vignesh Raghavendra wrote:
> Update HyperBus entry with branch used to stage patches under
> mtd.git. Also, add mailing list and patchwork queue information.
> 
> Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
> Acked-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
> v2: Update commit desc to include all changes being made
> 
>  MAINTAINERS | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index a0d86490c2c6..4b9930263dc7 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -7769,6 +7769,9 @@ F:	Documentation/ABI/testing/debugfs-hyperv
>  
>  HYPERBUS SUPPORT
>  M:	Vignesh Raghavendra <vigneshr@ti.com>
> +L:	linux-mtd@lists.infradead.org
> +Q:	http://patchwork.ozlabs.org/project/linux-mtd/list/
> +T:	git git://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git cfi/next


Could you add CFI branch of mtd.git to linux-next:

git://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git

branch: cfi/next

I am planning to use this branch to stage patches for CFI flashes and
for newly added HyperBus framework.

Miquel has already applied this patch to mtd/next


-- 
Regards
Vignesh

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
