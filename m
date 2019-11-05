Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAB45EF295
	for <lists+linux-mtd@lfdr.de>; Tue,  5 Nov 2019 02:26:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kZPwxi0wMyHiDHhkUV1dKfO5+X4RbK5LFtphl/Rrn3k=; b=IQSt7Vp8gy0yvT
	iiUm3H1aeYbMH2TgwSS8ILchm/PQTeuhax1bR+LZ53i0fXYE2UWGbvp9pFEEQ20CyxLIPR7jgbA5F
	G8FrBYALDk9t0D6pbH0WfL7oZ1vSv3hKjY5kV7WOWzjR2d++PaOwGGhR+G+ogYHy0kJEbYGMA+j98
	Oq8eeB/4HGdAbAjy7SNtVus7swRLAf33eQ3pm+KzkdDtM6J6/qzvY6Dj3UaNcjePF8pmevxJWfoAO
	49DQcIxi6Kb0y9Vj95T6VjZNHy/kWxPYFKG8TnfHnRilktbiIPzeyD6UQcz1WhzhzrKhuRkP0cCpl
	LhQHPldknQuxZun5qWJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRncF-0004na-MG; Tue, 05 Nov 2019 01:26:39 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRnby-0004fX-Co; Tue, 05 Nov 2019 01:26:23 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 33FE268BE1; Tue,  5 Nov 2019 02:26:18 +0100 (CET)
Date: Tue, 5 Nov 2019 02:26:17 +0100
From: Christoph Hellwig <hch@lst.de>
To: Guo Ren <guoren@kernel.org>
Subject: Re: [PATCH 20/21] csky: remove ioremap_cache
Message-ID: <20191105012617.GA31847@lst.de>
References: <20191017174554.29840-1-hch@lst.de>
 <20191017174554.29840-21-hch@lst.de>
 <CAJF2gTQ_VeBfi1uaafgtp+uA2skq-w2px12ig=5QD1O9J+PgbA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJF2gTQ_VeBfi1uaafgtp+uA2skq-w2px12ig=5QD1O9J+PgbA@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_172622_585015_4FC3D572 
X-CRM114-Status: UNSURE (   6.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-mtd@lists.infradead.org, sparclinux@vger.kernel.org,
 linux-riscv@lists.infradead.org, Vincent Chen <deanbo422@gmail.com>,
 Christoph Hellwig <hch@lst.de>, linux-arch <linux-arch@vger.kernel.org>,
 linux-s390@vger.kernel.org, linux-hexagon@vger.kernel.org, x86@kernel.org,
 linux-snps-arc@lists.infradead.org, linux-xtensa@linux-xtensa.org,
 Arnd Bergmann <arnd@arndb.de>, linux-m68k@lists.linux-m68k.org,
 openrisc@lists.librecores.org, Greentime Hu <green.hu@gmail.com>,
 Guan Xuetao <gxt@pku.edu.cn>, linux-arm-kernel@lists.infradead.org,
 Michal Simek <monstr@monstr.eu>, linux-parisc@vger.kernel.org,
 linux-mips@vger.kernel.org, linux-alpha@vger.kernel.org,
 nios2-dev@lists.rocketboards.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, Oct 21, 2019 at 03:58:28PM +0800, Guo Ren wrote:
> Acked-by: Guo Ren <guoren@kernel.org>

Can you also take a look at the next patch and give me a review?

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
