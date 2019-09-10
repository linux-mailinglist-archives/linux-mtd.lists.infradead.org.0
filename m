Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71F2EAEE5C
	for <lists+linux-mtd@lfdr.de>; Tue, 10 Sep 2019 17:18:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dbqw5yG/OaCvbWhpvGsHq36pKLMyVXLNBUM1exVU5+0=; b=dWLJZlR/TaK9SY
	4IgBr9UHqE+OKLomLXhfJL/NeYmJ1q41rXjucL1rCkR2BBaXeyjkBa9SOBGvvVy6Tcu0uv1GTG9Bq
	8ezlyPIwrJtGvTflTY8A8Nasf2B8pgupxz/JplxObswHHJsCZ/q7K8TTmk46/2bMbpqgZ7lGzzGWX
	G5S7GbarqQQyWMtIo9jZ3aktz0CIYsrq6LT/LnwTZSac4CYHq9uEFN14bm5ik1sff3MRTMWJEBdRO
	jLfK+oNXAplY+aE9mHebcuJ5a3EF3+j4gNEkWZupAh6AqSraiFFs5qtz/b3vN/kItIbGHUP38iSrQ
	StDNnXEXHGH96BEhwQlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7htz-0002H6-I4; Tue, 10 Sep 2019 15:17:55 +0000
Received: from namei.org ([65.99.196.166])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7htq-0002Gi-CR
 for linux-mtd@lists.infradead.org; Tue, 10 Sep 2019 15:17:47 +0000
Received: from localhost (localhost [127.0.0.1])
 by namei.org (8.14.4/8.14.4) with ESMTP id x8AFHQtv003782;
 Tue, 10 Sep 2019 15:17:26 GMT
Date: Tue, 10 Sep 2019 08:17:26 -0700 (PDT)
From: James Morris <jmorris@namei.org>
To: Matthew Garrett <mjg59@google.com>
Subject: Re: [PATCH 2/2] mtd: phram,slram: Disable when the kernel is locked
 down
In-Reply-To: <CACdnJuutzv+0nPKeizsiaix5YtYHU4RSoH-hPFfG1Z8sW_yy2w@mail.gmail.com>
Message-ID: <alpine.LRH.2.21.1909100816170.3709@namei.org>
References: <20190830154549.vss6h5tlrl6d5r5y@decadent.org.uk>
 <20190830154720.eekfjt6c4jzvlbfz@decadent.org.uk>
 <CACdnJuutzv+0nPKeizsiaix5YtYHU4RSoH-hPFfG1Z8sW_yy2w@mail.gmail.com>
User-Agent: Alpine 2.21 (LRH 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_081746_503447_602AE09B 
X-CRM114-Status: GOOD (  11.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: David Howells <dhowells@redhat.com>, Joern Engel <joern@lazybastard.org>,
 LSM List <linux-security-module@vger.kernel.org>,
 Ben Hutchings <ben@decadent.org.uk>, linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, 10 Sep 2019, Matthew Garrett wrote:

> On Fri, Aug 30, 2019 at 11:47 AM Ben Hutchings <ben@decadent.org.uk> wrote:
> >
> > These drivers allow mapping arbitrary memory ranges as MTD devices.
> > This should be disabled to preserve the kernel's integrity when it is
> > locked down.
> >
> > * Add the HWPARAM flag to the module parameters
> > * When slram is built-in, it uses __setup() to read kernel parameters,
> >   so add an explicit check security_locked_down() check
> >
> > Signed-off-by: Ben Hutchings <ben@decadent.org.uk>
> > Cc: Matthew Garrett <mjg59@google.com>
> > Cc: David Howells <dhowells@redhat.com>
> > Cc: Joern Engel <joern@lazybastard.org>
> > Cc: linux-mtd@lists.infradead.org
> 
> Reviewed-by: Matthew Garrett <mjg59@google.com>
> 
> James, should I pick patches like this up and send them to you, or
> will you queue them directly after they're acked?

As long as I'm on the to or cc when they're acked, I can grab them.


-- 
James Morris
<jmorris@namei.org>


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
