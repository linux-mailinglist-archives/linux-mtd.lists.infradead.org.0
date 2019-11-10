Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A2DF69B5
	for <lists+linux-mtd@lfdr.de>; Sun, 10 Nov 2019 16:32:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LdELXa9s0n7KRWLTuVTl3RO+v3W6gAwVhC3oXY8CeDc=; b=hTHCS+TUR1oLO3
	/mte51B5XsuMNUy+Z08WJz3wc9kJANMQGer9uiIEsQjwhuJbKOpnU0XfZMVSooKkyCXVnhLjTF6QR
	vzRqKm5ZNt+nVyYsTQJUI78K24byXp/CFeZPeBzC8QysSCNg7zZ6XWCj2/FaAk9qTx3vXKOANHUb+
	2l9O3x4PhzOBRcv6AGfrJzu2SaBT2tNPECG3hVRgauZEzSPPW5UFh9wd7m+FwzJvspZhxT2e34vkr
	spWw043pC7xdW5y3lMqSws9bmkIKbThGRNsMOzgPw+ACIN5uK+8qFrlopJVvgU6/5yA3O5pru2IDL
	qZr5us7KLKdb6DJrZPTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTpCo-0005tk-8y; Sun, 10 Nov 2019 15:32:46 +0000
Received: from lilium.sigma-star.at ([109.75.188.150])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTpCB-0005U6-NM
 for linux-mtd@lists.infradead.org; Sun, 10 Nov 2019 15:32:09 +0000
Received: from localhost (localhost [127.0.0.1])
 by lilium.sigma-star.at (Postfix) with ESMTP id CB33E18109A02;
 Sun, 10 Nov 2019 16:32:05 +0100 (CET)
Received: from lilium.sigma-star.at ([127.0.0.1])
 by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id knTT_CVdYQ3v; Sun, 10 Nov 2019 16:32:05 +0100 (CET)
Received: from lilium.sigma-star.at ([127.0.0.1])
 by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 3rD02D975MxH; Sun, 10 Nov 2019 16:32:04 +0100 (CET)
From: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
To: linux-mtd@lists.infradead.org
Subject: [PATCH 00/15] mtd-utils: cleanup resource leaks
Date: Sun, 10 Nov 2019 16:30:44 +0100
Message-Id: <20191110153059.28878-1-david.oberhollenzer@sigma-star.at>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_073207_933168_788A0426 
X-CRM114-Status: UNSURE (   6.98  )
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
Cc: richard@nod.at
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi,

back in 2016 or so I already fixed almost all of the warnings
reported by gcc for mtd-utils. Since then, gcc has gotten better
[citation needed] and with its colorfull diagnostics, compiling
mtd-utils finally makes your terminal look like a slot machine
again.

Furthermore, mtd-utils is also on coverity scan since at least 2017:

https://scan.coverity.com/projects/mtd-utils

I've been procrastinating lately and finally got around to looking
into this again.

This patch set tries to eliminate the largest single group of issues
that generate a lot of noise in the diagnostics: resource leaks.

It's not *that* critical for mtd-utils, it should be easy to fix and
it's also the largest chunk of issues since mtd-utils historically
didn't care at all and leak resources left and right.

Please tell me if my fixes break something elsewhere or my assumptions
about the intended behaviour are flawed. Otherwise I will merge this
at the end of next week and move on to the next batch.

Thanks,

David


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
