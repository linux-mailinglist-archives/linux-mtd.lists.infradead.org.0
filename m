Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71C3691011
	for <lists+linux-mtd@lfdr.de>; Sat, 17 Aug 2019 12:35:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rkKNwyVZatHH1gAY+ZY/2o8teVNoIXBt2V73EWGB5Tc=; b=ofB9JkPrO8i2E0
	Qp4GVoRxEGUnBBbNpkDSXU7ufIbNAEXh+Ymmqn4JjkNzNq/WzMlL6btk/yp0AaUPnIkgCB96S21oJ
	5Ghn8ZTR0nsZ6K5zDPga7/ChhS1MltC4EOF9/2LfYQxfT3lZHKA1mOaH74/9n4K8xK4HIOUGvlD67
	NLSctG9gpBqykYNhS5hIxi8finCG4F3/GvC+x6xSdVN/FZpb1FYR6qwRSKRJwx891a1ozEVq1ZgLL
	tgoyAwGHH6koxdS81dVxEY972vgF2QXCrv2efmrHgxxFcQEgZjOUllC7yeD9NxfPwmrIL2Pv49p9V
	mYrTTEL3A2y8e5FJt5CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyw3C-0004IL-MK; Sat, 17 Aug 2019 10:35:10 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyw2C-00044w-2m; Sat, 17 Aug 2019 10:34:09 +0000
Received: by mail-wm1-x343.google.com with SMTP id g67so6023118wme.1;
 Sat, 17 Aug 2019 03:34:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=39YvwnXSLPYPPS8HyY6xQ0pEYqQsaSVOcIZxY6QaSy0=;
 b=HaU5j73Xl18SPfWIKR/l5s1id63iaB7lpk2eLE9Cv93RaSr0QygCeb8VtdrjK/DFoH
 BzanBzeDzwH/CfWIayA254C8bK/pzQhAr1B+Cx1TRlWNSkT4XCzZLK+D58uxuJj/Z6c8
 1+jn+z+dU7Ewi0li9IwJ7jmFgqXABsf3p+TxQXzA7fHIgWlPmx739auC7j/bqLC+8NoU
 C3XDYz8eetWLerWT9nDLSd3eyiPofE72zfZEgyCEmcNmd7KEx0oxertXb8lLCukZQpFv
 6wFercfLlPzs2ZP2Iysl6A4A+S9cPkEPkEAEiZMttS1pDBUiq7OyBBL/XEMk2UGfKSWg
 tAUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=39YvwnXSLPYPPS8HyY6xQ0pEYqQsaSVOcIZxY6QaSy0=;
 b=q3yKc+hIhVMyfqrYr+CGNCCBqEUbiubZTi+XTypqrhTtXyeybVirp0Jn8lnBWCJBzq
 QMc+zVbsXbJpkWZM3O8jWJHklbyJT78c5ewbwqjBtSpYmM6/CqYEiOY8x8HDFdIPEcgt
 XQIid6s/BXQ8zMy9SQVV4y0IbC78avwKMCSZZotaxwVi6KOZ8WkHRgArI99IxTZ8EKFH
 oYWL/n4LT9eHgB27/yihM/QdxWy5ge95lVX7kH1yTEBp9AT8Hdg/tv0endBQ8XZ162Rr
 rdXfzPeOxWtO0/p41i7dnke/qHxKDz184u8Y+yUxOMZXEnDF5jcFL9QC8wTdOXR43W6G
 Cu4w==
X-Gm-Message-State: APjAAAU2/7iAXZCALd9CRxiDWOVHdkFoWwx9MBq/0s4+gxElEiVWqcfo
 MNLJL/3x/GkDo1TB2A/8msA=
X-Google-Smtp-Source: APXvYqx+skxBDSiX8lI2gwUVvrx6yD5s1jqeJ+6VF/JmtojW+ENXyX4cQUxihmaZEwvtXGQA8HaHqg==
X-Received: by 2002:a1c:b342:: with SMTP id c63mr11130163wmf.84.1566038046300; 
 Sat, 17 Aug 2019 03:34:06 -0700 (PDT)
Received: from gmail.com (2E8B0CD5.catv.pool.telekom.hu. [46.139.12.213])
 by smtp.gmail.com with ESMTPSA id 4sm14396946wro.78.2019.08.17.03.34.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 17 Aug 2019 03:34:05 -0700 (PDT)
Date: Sat, 17 Aug 2019 12:34:02 +0200
From: Ingo Molnar <mingo@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 12/26] x86: clean up ioremap
Message-ID: <20190817103402.GA7602@gmail.com>
References: <20190817073253.27819-1-hch@lst.de>
 <20190817073253.27819-13-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190817073253.27819-13-hch@lst.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190817_033408_151043_72E6345F 
X-CRM114-Status: UNSURE (   8.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.5 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 3.1 FSL_HELO_FAKE          No description available.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mingo.kernel.org[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-kernel@vger.kernel.org, Guo Ren <guoren@kernel.org>,
 sparclinux@vger.kernel.org, linux-riscv@lists.infradead.org,
 Vincent Chen <deanbo422@gmail.com>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, linux-hexagon@vger.kernel.org, x86@kernel.org,
 linux-snps-arc@lists.infradead.org, linux-xtensa@linux-xtensa.org,
 Arnd Bergmann <arnd@arndb.de>, linux-m68k@lists.linux-m68k.org,
 openrisc@lists.librecores.org, Greentime Hu <green.hu@gmail.com>,
 linux-mtd@lists.infradead.org, Guan Xuetao <gxt@pku.edu.cn>,
 linux-arm-kernel@lists.infradead.org, Michal Simek <monstr@monstr.eu>,
 linux-parisc@vger.kernel.org, linux-mips@vger.kernel.org,
 linux-alpha@vger.kernel.org, nios2-dev@lists.rocketboards.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


* Christoph Hellwig <hch@lst.de> wrote:

> Use ioremap as the main implemented function, and defined
> ioremap_nocache to it as a deprecated alias.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  arch/x86/include/asm/io.h | 8 ++------
>  arch/x86/mm/ioremap.c     | 8 ++++----
>  arch/x86/mm/pageattr.c    | 4 ++--
>  3 files changed, 8 insertions(+), 12 deletions(-)

Acked-by: Ingo Molnar <mingo@kernel.org>

Thanks,

	Ingo

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
