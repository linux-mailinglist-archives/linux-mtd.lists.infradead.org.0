Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C206168835
	for <lists+linux-mtd@lfdr.de>; Mon, 15 Jul 2019 13:31:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gdI1Ws21nNr6aglVK1sRIwgPqy0TLFMSR72Iamewwv0=; b=kWrapiu1+ypGCH
	IPvfehir5QdvB78kF/LSDMvQt8WsyyyziteBlgQa6+WyxtnQXTdG9qe8BM5IgU0vpg1OuiMKgUIcD
	8F5MTkKSNpqgYDJ+Z2x3k1ogHrGbJ35DUjMQaSSrCIpT6oRVzbXHb3lh0g64pLE/2en9gzFwRIGfz
	lT7A8x3uKf2S/E2WM02ClRC8mRZyU7Azl1VihK6hB0nKtfYEj9FDaT3tRgmcnVPPBvEq085CtMedC
	ucGR/am4zvnPKHCVY9f4Tqc4dDoKbzkpJVsjXiN6GKRxujH+SEvA0asZb3bys8Ma2knVGdCVtrdhY
	2iILaK9tTmnCNhkME3pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmzCf-0002CY-UI; Mon, 15 Jul 2019 11:31:33 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmzCT-0002Aq-8e
 for linux-mtd@lists.infradead.org; Mon, 15 Jul 2019 11:31:22 +0000
Received: by mail-ua1-x941.google.com with SMTP id s4so6586018uad.7
 for <linux-mtd@lists.infradead.org>; Mon, 15 Jul 2019 04:31:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8XU8jKhBVJIGwCUR6YALgDf3CzV2y2cp7RAEeInAmf8=;
 b=IPuTYW4kgjiPJCyH1ulOxymE3bGfWfAPxbnGMMdbmXgssWbpw0MKDtY2U7jTXveIbD
 h3cxipr1WYPFB3gqwLBvVEUrIqUtwX4RHgnKJandIPsbDfadTa4jeydkybajjZ9r1i48
 F6jgvAAQGwrK5PsDDfGllISYJ+b1ElTIDkZKLYiTzA9iXle/autkWZ6fY/kbLzk89XgR
 rVrB7OmeRRk/T8akIfk+3Qu8D62jjB/4JOLLpsg5TfHVwoIRAJZxxtb5o7iF6n7EgWcf
 MXVqSD0AklbE3z/ZWXs+IAnGxZVTVLiazXoYHlCkK5qdTfSCPMqmtsxwXcY6RrIyEb0Z
 CiFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8XU8jKhBVJIGwCUR6YALgDf3CzV2y2cp7RAEeInAmf8=;
 b=pZYK0ZPx2wN8pR0ImJpXmO4anEMs6SRdRZK2+lrCfBWOtdZNHbq65saDLpfZnmOMfG
 y/9CiEJEHlUCHrllh3zzjX59irASeCe09XnQA6QDE2hjBmQvqiEsNg37znR/EJ8IVjUD
 pD3yknQzellHs4Ra5Y40ZLwa22nYe176mf2zqXvKXEjPt/GYxwxwYqofC12py4TbzkAq
 e5E91Y6EGsxIF0nihiVdOdOx9UgvapM+JFCeIZ7RrTGSIk7jvCGWI+fOh91CJHW2RqhP
 LFO7fs2rCNaI7Dx9SnJU6iLb1oqfmKuqCd1zaQlyFx+bUs5IjahH23fugsIoVr8euMuC
 Ch/A==
X-Gm-Message-State: APjAAAVo0x7+6qrQFn4iFY7DBQSKVxFCXI11IVSG42btNNhL/XSvD3Ef
 apbX5fv10al0IMnmgfr5eTw9zGskSDZOvXo24ucCTg==
X-Google-Smtp-Source: APXvYqz8kX/FHtA/R6g5rZlZruok/jN5jkOYLlQ0oreU3tYwXOubKKFkfzEoS8mZB9/JdupuUl3LMxao7rM9cewVF2I=
X-Received: by 2002:ab0:30c7:: with SMTP id c7mr15963841uam.143.1563190278200; 
 Mon, 15 Jul 2019 04:31:18 -0700 (PDT)
MIME-Version: 1.0
References: <1562092745-11541-1-git-send-email-sagar.kadam@sifive.com>
 <CAARK3HkMz3AdcVyrteGmqczCaMDTYS1h9uALspm75RFE9c6jFQ@mail.gmail.com>
 <14025233-db7d-2307-5367-d41ed24f371d@microchip.com>
In-Reply-To: <14025233-db7d-2307-5367-d41ed24f371d@microchip.com>
From: Sagar Kadam <sagar.kadam@sifive.com>
Date: Mon, 15 Jul 2019 17:01:06 +0530
Message-ID: <CAARK3H=TJNABphR_WZEQ-6ZTkr4ugEJhyutdXE_JZiLS-EU67g@mail.gmail.com>
Subject: Re: [PATCH v7 0/4] mtd: spi-nor: add support for is25wp256 spi-nor
 flash
To: Tudor.Ambarus@microchip.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_043121_303544_C8227784 
X-CRM114-Status: GOOD (  12.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Vignesh Raghavendra <vigneshr@ti.com>,
 richard@nod.at, Palmer Dabbelt <palmer@sifive.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 marek.vasut@gmail.com, linux-mtd@lists.infradead.org,
 Paul Walmsley <paul.walmsley@sifive.com>, miquel.raynal@bootlin.com,
 linux-riscv@lists.infradead.org, computersforpeace@gmail.com,
 dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Tudor,

On Mon, Jul 15, 2019 at 4:35 PM <Tudor.Ambarus@microchip.com> wrote:
>
>
>
> On 07/15/2019 01:45 PM, Sagar Kadam wrote:
> > Hi All,
> >
> > Any comments on this series?
> >
>
> Hi, Sagar,
>
> I was OOO the last 2 weeks and previously I was busy with other spi-nor patches.
> The series is in my queue, I'll review it. You can check the status of a mtd
> patch by looking in https://patchwork.ozlabs.org/project/linux-mtd/list/
>
> Cheers,
> ta

Thank you for queuing it for review and sharing the link.
I will follow-up on patchwork.

BR,
Sagar Kadam

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
