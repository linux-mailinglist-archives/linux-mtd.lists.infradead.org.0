Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E14D1CFAC7
	for <lists+linux-mtd@lfdr.de>; Tue, 12 May 2020 18:33:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TK4kql79wP5pxSU/mt6J4bs5JOBvDgOKk4oI6yeNFqw=; b=P9sRU3yzh7CxpF
	HUHp3CoJMUxJCKEjDyv/myYHZ8W7s3g+puL76XG4IM3etiBb2ECgIw+lGPj3p27TYvWjctqehrbyE
	Dwjst6P4xB8PTYpOvYEGrWe2SB6DQkzTGIOl7OxHDyzOCRXPjWSO0AICMBs1o0N7deildmJ86RTgi
	NuWTjz9+qYZWGFBSRNgE7HV8v4wGhNQWmMg73LdspwD75oN3oRutiJaxotpGCtBS5qHWK3QJNDjid
	L7uFAtaFQR5Bx/xgNa+uO/Ahq4SaIy7Gwz7c3GGkCbMxREf25QhR26ccwAfoD0OKwBO/1TGZSVL+q
	W8z252NqGCKktGN82ycQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYXqE-0004W8-Qd; Tue, 12 May 2020 16:33:14 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYXq7-0004VN-KB
 for linux-mtd@lists.infradead.org; Tue, 12 May 2020 16:33:08 +0000
Received: by mail-pl1-x641.google.com with SMTP id b8so5580223plm.11
 for <linux-mtd@lists.infradead.org>; Tue, 12 May 2020 09:33:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ctZuzP0mrOdvFXnnYs/2o1wzWdulhTSUbqXer0Ilo18=;
 b=fDh8SqPU60lI6TPXL0xB06mkxX6puiXsebxoJlaAKLmVB07HrYfUXhD8E99vO8NQwE
 gMd9eoSlJWTSue3RRnvY+pNo05ZAe5a1kCVy+1xCJMcZ08G2nqCxsmEj3J1UtO3Cx3xz
 SAZmraUZVuIR7nL0opNunUuuqkj9JxON+OMVE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ctZuzP0mrOdvFXnnYs/2o1wzWdulhTSUbqXer0Ilo18=;
 b=qcs4YuwkmXqdOero12eO+wYWBuKSGM4PRdOBpHODo/QfOSr3W0AEJYx/WC+ETrEbAY
 G4457/1/w4PsLdNbHaeqTO7jBlw7V7NE/haB3lyLmNGoV9+dYT8C4+TLJFKnAshXXnDl
 XHyKPm+LoUWGd7i3R6V0n+jSPSORm6zDmM/6FM4QvxUr/ON4+VwOYf8PdLzx1bIUw/1a
 VjH0kpB8ZxZ7/idDt66pk96cROXKVVvhFaRi8HAbbi8ujVv7eULsFQ3nXcvWroNbHvwC
 tqo1vbNUCL3jek8GdOIWecwifAr1rk+YgZOHZ9qKyipe/ePYdb/E5HXC5+6HXKJj2I20
 lbRQ==
X-Gm-Message-State: AOAM531/xycKXowfElKTE6AEURkJiV6U9aDEigzorDX0u+mruvKbQaIz
 OtxU13eVxO/SQBeCjVp/SikpJQ==
X-Google-Smtp-Source: ABdhPJzVIpIBCQXJuEzutGDFzp+Vae8wcRS4XKqjUGTYDPhU9pydk6Fv13BBb3AfSRYnbNfslp36ng==
X-Received: by 2002:a17:90b:86:: with SMTP id bb6mr154524pjb.138.1589301186185; 
 Tue, 12 May 2020 09:33:06 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id 207sm10732620pgh.34.2020.05.12.09.33.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 09:33:05 -0700 (PDT)
Date: Tue, 12 May 2020 09:33:03 -0700
From: Kees Cook <keescook@chromium.org>
To: WeiXiong Liao <liaoweixiong@allwinnertech.com>
Subject: Re: [PATCH] mtd: offset align to block size bofore block operation
Message-ID: <202005120932.96313EB605@keescook>
References: <1589266715-4168-1-git-send-email-liaoweixiong@allwinnertech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589266715-4168-1-git-send-email-liaoweixiong@allwinnertech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_093307_684333_9ADAE275 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Tony Luck <tony.luck@intel.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>,
 Anton Vorontsov <anton@enomsg.org>, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org, Colin Cross <ccross@android.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, May 12, 2020 at 02:58:35PM +0800, WeiXiong Liao wrote:
> The off parameter on mtdpsore_block_*() does not align to block size,
> which makes some bugs. For example, a block contains dmesg zones
> with number 0 to 3. When user remove all these files, mapped to
> these zones, mtdpstore is expected to check whether No.0 to No.3 is
> unused then erase this block. However it check No.3 to No.6 because
> it get wrongly beginning zonenum from misaligned off.
> 
> Signed-off-by: WeiXiong Liao <liaoweixiong@allwinnertech.com>

Thanks! I've squashed this and will send a v8 of the mtdpstore
separately.

-Kees

-- 
Kees Cook

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
