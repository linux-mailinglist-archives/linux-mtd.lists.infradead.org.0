Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B53ECE6CC1
	for <lists+linux-mtd@lfdr.de>; Mon, 28 Oct 2019 08:13:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kibbSIsSgPObItdlpy8jqXmZtVVFwm7rw1BTDuSRFVI=; b=YxbW6UVFYNOpUe
	bV96dHM4yZu4aRVd1zCPP6ke/zZ/SSUQyTT8orvlhX5IqGcgZsftCl/yhNgN2TSPrJukEf2z5NTlt
	nRpWbogBqAM9cRKmZ40j7z3uwpX09MNyzXpt7E+4O2Q2Q2YtBUmKR+O7RDSIyJkuf4HqUqL98gRV3
	0ZM6LnVCphYUoJ9zcBQP0+8zshBlJQOr1MZ2l0/rZ0SgS7V2nJ9Nu37RiNmu/lCk6SC3op68Y8i3U
	iVuGmAS4m03KXJYTblglHr5JHXcHynaIyuYBBkFaZBLzOFQ5j2f//W4jJaJ+IY+H6OjI+ejWPfags
	RRGzhKRBARkik0WkOeEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOzDb-0002oX-1X; Mon, 28 Oct 2019 07:13:35 +0000
Received: from lilium.sigma-star.at ([109.75.188.150])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOzDS-0002nr-AI
 for linux-mtd@lists.infradead.org; Mon, 28 Oct 2019 07:13:27 +0000
Received: from localhost (localhost [127.0.0.1])
 by lilium.sigma-star.at (Postfix) with ESMTP id 7D78418108D36;
 Mon, 28 Oct 2019 08:13:21 +0100 (CET)
Received: from lilium.sigma-star.at ([127.0.0.1])
 by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id v3u8yAd5DhYi; Mon, 28 Oct 2019 08:13:21 +0100 (CET)
Received: from lilium.sigma-star.at ([127.0.0.1])
 by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id Opl0rXD-DWo2; Mon, 28 Oct 2019 08:13:20 +0100 (CET)
Received: from lilium.sigma-star.at (lilium.sigma-star.at [109.75.188.150])
 by lilium.sigma-star.at (Postfix) with ESMTP id 9D9E618108D36;
 Mon, 28 Oct 2019 08:13:20 +0100 (CET)
Date: Mon, 28 Oct 2019 08:13:19 +0100 (CET)
From: David Oberhollenzer <goliath@sigma-star.at>
To: drolevar@gmail.com
Message-ID: <695487279.383172.1572246799948.JavaMail.zimbra@sigma-star.at>
In-Reply-To: <20191021101037.96187-1-drolevar@gmail.com>
References: <20191021101037.96187-1-drolevar@gmail.com>
Subject: Re: [PATCH v2] flashcp: Add option -A/--erase-all
MIME-Version: 1.0
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF70 (Linux)/8.8.12_GA_3809)
Thread-Topic: flashcp: Add option -A/--erase-all
Thread-Index: eeVRkEqkWzLwwJ3Hf+lRJUHrYiLIiQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_001326_501840_D4502763 
X-CRM114-Status: UNSURE (   3.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: linux-mtd <linux-mtd@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Applied to mtd-utils.git master.

Thanks,

David

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
