Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D99A712532A
	for <lists+linux-mtd@lfdr.de>; Wed, 18 Dec 2019 21:22:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:
	Subject:To:From:Date:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=8kNdl6g7vyVllFna0orf31RXJteuaxvSS00j2sdxNg4=; b=fr1
	28SEAfbRRsrngWQdVMjRTO/cyHQiMplldP2PILDbTVZ7ALPFqfOnIWWqWF5rL43ZLRH9dDbeHVEPc
	caXPEpBuWbUB6CBiocTQlw2l7A7dsQkunsY6VQ/veTPkn/CXtRLo/p08vo2MWaLZZxmwahcr/kuc2
	yn/CF1jpfecyUoJhgUbj1f3y4Xm6r4ypmxrMoh9Dw0K678CPxrB+i+aLtuObYHN6vHfZjidKr1MsP
	ZZ7jeF4YbgolZINdAvIPB1Py95l21/b7c9+YIr//IEZi7Wekx4TzgKbQQ4uZcVviljm0fC4nIrjk0
	9tuY/t948PsAr3kQjpD7McXzrYlOcVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihfpl-0004pb-ME; Wed, 18 Dec 2019 20:22:13 +0000
Received: from zankapfel.net ([5.45.106.173])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihfpZ-0004nr-Rq
 for linux-mtd@lists.infradead.org; Wed, 18 Dec 2019 20:22:03 +0000
Received: by zankapfel.net (Postfix, from userid 1000)
 id 021BF11A4AE; Wed, 18 Dec 2019 21:21:54 +0100 (CET)
Date: Wed, 18 Dec 2019 21:21:54 +0100
From: Phil Eichinger <phil@zankapfel.net>
To: linux-mtd@lists.infradead.org
Subject: How do you handle absent flash chips?
Message-ID: <20191218202154.wdh2vqgh4u3ibhjb@zankapfel.net>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_122202_047047_E01AAC4B 
X-CRM114-Status: UNSURE (   6.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Reply-To: Phil Eichinger <phil@zankapfel.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi *,

I was wondering, how to handle absent flash chips?
In my case I have 1 SPI flash on CS0 and another - optionally
missing - one on CS1. If I have them both in my device tree the
whole driver fails to load if the second one is missing.

The whole point is, it is totally reasonable that the second one may be
removed by the user. Is there any way to handle a missing flash
currently?

Cheers

Phil
--

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
