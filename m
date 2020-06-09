Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EEFF1F33DF
	for <lists+linux-mtd@lfdr.de>; Tue,  9 Jun 2020 07:58:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	Subject:From:To:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=TO9eXO+Yxq+JtJwEyPzMjv1jyEQi1EGYjqUr/aAZrxg=; b=UPa
	ZHKIE1oSWwG4XPkL4RX+JiPYtu6RXKG5BPx/BdjYZHfnogp8Kfh/yLv49v8EZRp5eeADpC91By2ns
	CS14tb2Br8J2EVwgGMC61vnSwXMbEcYTnYLmK7wZy6juN2/GVjTvlIT08F2tMEdC9V40aciud0FC/
	gJoaC2u9V4Rrn0sfjNrUxWONvTkAh3kW1aWAFajPNzQiczwfp/wMJMO79k7pKALqWSZJCiwN72R8l
	Lkh5IrtXuCSZLpTklTNnc2ClBeIr3Kxuw7wPIW9h6qI7L0svY/lsFDgwj2ZLS7n5EgwmavXWCjsZw
	LjVx4jwt8m0krf18XuBsDpPRKodGcKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiXHX-0001EP-6g; Tue, 09 Jun 2020 05:58:43 +0000
Received: from bilbo.ozlabs.org ([203.11.71.1] helo=ozlabs.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiXHM-0001DR-P3; Tue, 09 Jun 2020 05:58:36 +0000
Received: by ozlabs.org (Postfix, from userid 1034)
 id 49gzvB1bJMz9sSy; Tue,  9 Jun 2020 15:58:30 +1000 (AEST)
X-powerpc-patch-notification: thanks
X-powerpc-patch-commit: bac7ca7b985b72873bd4ac2553b13b5af5b1f08a
In-Reply-To: <994931554238042@iva8-b333b7f98ab0.qloud-c.yandex.net>
To: Andrey Abramov <st5pub@yandex.ru>, vgupta <vgupta@synopsys.com>,
 benh <benh@kernel.crashing.org>, paulus <paulus@samba.org>,
 tglx <tglx@linutronix.de>, mingo <mingo@redhat.com>, bp <bp@alien8.de>,
 hpa <hpa@zytor.com>, x86 <x86@kernel.org>, mark <mark@fasheh.com>,
 jlbec <jlbec@evilplan.org>, richard <richard@nod.at>,
 dedekind1 <dedekind1@gmail.com>, adrian.hunter <adrian.hunter@intel.com>,
 gregkh <gregkh@linuxfoundation.org>,
 naveen.n.rao <naveen.n.rao@linux.vnet.ibm.com>, jpoimboe <jpoimboe@redhat.com>,
 Dave Chinner <dchinner@redhat.com>, darrick.wong <darrick.wong@oracle.com>,
 ard.biesheuvel <ard.biesheuvel@linaro.org>, George Spelvin <lkml@sdf.org>,
 linux-snps-arc <linux-snps-arc@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 ocfs2-devel <ocfs2-devel@oss.oracle.com>,
 linux-mtd <linux-mtd@lists.infradead.org>, sfr <sfr@canb.auug.org.au>
From: Michael Ellerman <patch-notifications@ellerman.id.au>
Subject: Re: [PATCH v3 2/5] powerpc: module_[32|64].c: replace swap function
 with built-in one
Message-Id: <49gzvB1bJMz9sSy@ozlabs.org>
Date: Tue,  9 Jun 2020 15:58:30 +1000 (AEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_225832_974026_A402C56C 
X-CRM114-Status: UNSURE (   4.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: malat <malat@debian.org>, "yamada.masahiro" <yamada.masahiro@socionext.com>,
 npiggin <npiggin@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, 2019-04-02 at 20:47:22 UTC, Andrey Abramov wrote:
> Replace relaswap with built-in one, because relaswap
> does a simple byte to byte swap.
> 
> Since Spectre mitigations have made indirect function calls more
> expensive, and the default simple byte copies swap is implemented
> without them, an "optimized" custom swap function is now
> a waste of time as well as code.
> 
> Signed-off-by: Andrey Abramov <st5pub@yandex.ru>
> Reviewed by: George Spelvin <lkml@sdf.org>
> Acked-by: Michael Ellerman <mpe@ellerman.id.au> (powerpc)

Applied to powerpc next, thanks.

https://git.kernel.org/powerpc/c/bac7ca7b985b72873bd4ac2553b13b5af5b1f08a

cheers

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
