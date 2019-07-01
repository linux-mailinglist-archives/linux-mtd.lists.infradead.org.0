Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DC214ECC8
	for <lists+linux-mtd@lfdr.de>; Fri, 21 Jun 2019 18:05:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:
	In-Reply-To:Date:To:From:Subject:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hdMORca+c2RgvGSITdW6/i6046uBccm3aYUHxQE+Sm8=; b=EOSAZcJYPdl/4I
	T2q4lsqWq7Yr1YuMmmHbQVqKUWpRclWuTgG2cQAH601fv+9l8UMmFUoJTgyR6h3LbUsCg5B5ytoR9
	ENYPFnhUbdxT7BBpIpyQNZ8ccmK0ZnqpfYHEYP1SqNVYM3jTVQZtSDn/TRf7XrRG1wXsVfWqBZixL
	u4FR4+dPvhZgXBltIGvoXGZgZ6SWROJfXT75ZlpwR7nbxf7UBj+nPJ/kD1EueKf55SyiqClorEF3F
	zFdgxgHX+xPxC+OCacraDVOUJADIQZaROJGWgQRlGXJ+3jKrQVZzdMoMV7NBWrM/Ocr8FLbQsyuRk
	aMql9yki+FGRvz3LQz2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heM2L-0000hE-Mf; Fri, 21 Jun 2019 16:05:13 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heM29-0000KF-BR
 for linux-mtd@lists.infradead.org; Fri, 21 Jun 2019 16:05:02 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jun 2019 09:04:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,400,1557212400"; d="scan'208";a="335855509"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga005.jf.intel.com with ESMTP; 21 Jun 2019 09:04:54 -0700
Received: from abityuts-desk1.fi.intel.com (abityuts-desk1.fi.intel.com
 [10.237.68.147])
 by linux.intel.com (Postfix) with ESMTP id D986C580372;
 Fri, 21 Jun 2019 09:04:52 -0700 (PDT)
Message-ID: <083d5cc89907c4a819f02f9f9cbfe1baf553607a.camel@gmail.com>
Subject: Re: [PATCH] mtd/ubi: fix initialization order of ubi subsystems
From: Artem Bityutskiy <dedekind1@gmail.com>
To: Mikhail Kshevetskiy <mikhail.kshevetskiy@gmail.com>
Date: Fri, 21 Jun 2019 19:04:51 +0300
In-Reply-To: <20190620132753.19538-1-mikhail.kshevetskiy@gmail.com>
References: <20190620132753.19538-1-mikhail.kshevetskiy@gmail.com>
User-Agent: Evolution 3.32.3 (3.32.3-1.fc30) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_090501_452002_22FF14DB 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.4 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
 CUSTOM_MED
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 FORGED_GMAIL_RCVD      'From' gmail.com does not match 'Received'
 headers
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (dedekind1[at]gmail.com)
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit (dedekind1[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dedekind1[at]gmail.com)
 1.2 NML_ADSP_CUSTOM_MED    ADSP custom_med hit, and not from a mailing
 list
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
Reply-To: dedekind1@gmail.com
Cc: Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, 2019-06-20 at 16:27 +0300, Mikhail Kshevetskiy wrote:
> -	err = ubi_wl_init(ubi, ai);
> +	err = ubi_eba_init(ubi, ai);
>  	if (err)
>  		goto out_vtbl;
>  
> -	err = ubi_eba_init(ubi, ai);
> +	err = ubi_wl_init(ubi, ai);
>  	if (err)
> -		goto out_wl;
> +		goto out_vtbl;

Looks good to me, thanks.

Reviewed-by: Artem Bityutskiy <artem.bityutskiy@linux.intel.com>


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
