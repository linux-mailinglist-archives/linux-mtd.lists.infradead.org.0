Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E5A914207A
	for <lists+linux-mtd@lfdr.de>; Sun, 19 Jan 2020 23:33:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:Message-ID:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DjXs2qmDQZaJwN8P1S8eo4OaEbyS3izAqKG/tnfKSHU=; b=pNOv988qnQUKVI
	5KZ6qQ9F7B6bo5k97yKmRoUdetaf66DnzZVtcAsPyMZiTHvB8E0UEKTBGRPYqMAD5s/Y3ykTan0RD
	pZJbumcbU6gP1IAzi7VrlcBSViLNdLcBnev4hq8SCdv+OGl4ISH0yAy2ooKdAgztuGNbjYsILpd7e
	YjXHx+33RFnzDzzTwNS9oIAPQgKtOcuk0fhCOC4ILF4BwBeTBVjE0oqtCQe+zLVGxN/Vltnc4t2TJ
	Vq1S6E/lrgclr0NKgVrQrorkuKl/VFmgC5ljpi43Vh39C1Fryj2efMe7yoZJhxlA6mJchzwvUymHQ
	PPh3S4rZZxA1hziXGhww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itJ8e-0005Qn-G1; Sun, 19 Jan 2020 22:33:48 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itJ8Z-0005QQ-NQ; Sun, 19 Jan 2020 22:33:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Subject:Message-ID:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RfsoZEMNE5OKfXMAOMFO/WGjUCpCfJqnX/KUuLoJ26g=; b=VD6H+F1ZGW8YM/dtb3nfJcvSnT
 E5i2mzEbt8yDeMoJ/L4Q29ChAkudgLwhMtU9Ryt9k4x93NgGsT3W9vRB0RxrXsiUmXRB6ZgROKHyQ
 /8LmR+/SHjVMpoUbAooIKnMO4x4TvHE0LgHLRIbcs0T6UYyTL58ePszJmFBmzGgbEdJENRo9ntBOB
 fnz49f/Le4rjfZH79VhE3VNJWVwpfsO+sLuyt1PKQQw3+iOxXxOIUV7Q73To/eFY6ZdXKc9gjG8XH
 3T2ZHvSEzNI/iMCuT0wd5CBuv/sFx8MgzEW9LeUfse8nd4XCpDdWG795+T+PnXf2h3mBtYnec2w++
 gBQyWA7g==;
Received: from lithops.sigma-star.at ([195.201.40.130])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itJ8w-00031j-Gz; Sun, 19 Jan 2020 22:34:08 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 5393060B21B1;
 Sun, 19 Jan 2020 23:33:30 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id sZ_v3mHs91UY; Sun, 19 Jan 2020 23:33:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 004DB6126B6B;
 Sun, 19 Jan 2020 23:33:29 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id fyVD4nqacwTq; Sun, 19 Jan 2020 23:33:29 +0100 (CET)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id CE53560B21B1;
 Sun, 19 Jan 2020 23:33:29 +0100 (CET)
Date: Sun, 19 Jan 2020 23:33:29 +0100 (CET)
From: Richard Weinberger <richard@nod.at>
To: torvalds <torvalds@linux-foundation.org>
Message-ID: <1224347843.24297.1579473209765.JavaMail.zimbra@nod.at>
Subject: Upcomming UBI/UBIFS/UML pull requests
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF68 (Linux)/8.8.12_GA_3809)
Thread-Index: 9GyKq+zIpLlpVOH+DznQRKJEc5a+Gw==
Thread-Topic: Upcomming UBI/UBIFS/UML pull requests
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_223406_606698_85727AD2 
X-CRM114-Status: UNSURE (   0.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.0 (++)
X-Spam-Report: SpamAssassin version 3.4.3 on casper.infradead.org summary:
 Content analysis details:   (2.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.0 PDS_TONAME_EQ_TOLOCAL_SHORT Short body with To: name matches
 everything in local email
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
Cc: linux-um <linux-um@lists.infradead.org>,
 Johannes Berg <johannes@sipsolutions.net>,
 anton ivanov <anton.ivanov@cambridgegreys.com>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Linus,

due to traveling I won't be able to send you pull requests
for UBI/UBIFS and UML this time.

Therefore I've already prepared my next branches and one of my colleges will
send you an PR as soon as the merge window opens.

Miquel: UBI/UBIFS
Anton or Johannes: UML

Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
