Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72AFB1ACD0
	for <lists+linux-mtd@lfdr.de>; Sun, 12 May 2019 17:40:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LbuNHr3Y5TtL2bV7PXR8cU3FDXF5HQgS2+/dIS04+XM=; b=ti3V2x6L1LXrim
	vEjaXkfg7TBXAJ+4CI2k3QbHCWBPNn4XgyDlvIbSgORhaLQVF91HAxahaZnHDJuvGJ6tlMlGG3vcD
	vx4sW7Irk220h9TW9ADIsGi05Cp1k2xsZuq5W0dYu3BowteDBLk1Pld5wEIshs5Xs7gDeW6uocZdF
	5r/Z+J7U7Cf05R259jUIxQhLTrz+AswLHPy03s5RHJGgP0rSxyUU/+zeEf6ZNL7pslIJmRHCDivXs
	I7/h4Uo0GrHDavB7TY6YDhIksShKar249/Klp+/MlShtoJswWkamZPKZk09KfiFIS1EAHrTMZK/XY
	yPd6m4UVzefnrQ1EeOYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPqam-0004ou-9c; Sun, 12 May 2019 15:40:48 +0000
Received: from chamillionaire.breakpoint.cc ([2a01:7a0:2:106d:670::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPqaf-0004oa-56
 for linux-mtd@lists.infradead.org; Sun, 12 May 2019 15:40:42 +0000
Received: from localhost ([127.0.0.1] helo=flow.W.breakpoint.cc)
 by Chamillionaire.breakpoint.cc with esmtp (Exim 4.89)
 (envelope-from <sebastian@breakpoint.cc>)
 id 1hPqaa-000492-Eo; Sun, 12 May 2019 17:40:36 +0200
From: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
To: linux-mtd@lists.infradead.org
Subject: [RFC] mkfs.ubifs: Add ZSTD compression
Date: Sun, 12 May 2019 17:40:29 +0200
Message-Id: <20190512154030.26027-1-sebastian@breakpoint.cc>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Breakpoint-Spam-Score: -1.0
X-Breakpoint-Spam-Level: -
X-Breakpoint-Spam-Status: No , -1.0 points, 5.0 required,  ALL_TRUSTED=-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_084041_340386_9CDE0961 
X-CRM114-Status: UNSURE (   7.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:7a0:2:106d:670:0:0:1 listed in]
 [list.dnswl.org]
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: Richard Weinberger <richard@nod.at>,
 David Oberhollenzer <david.oberhollenzer@sigma-star.at>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

I was accidentally talking with Richard about ZSTD compression in UBIFS
and we ended up that there is no proof that it makes sense. So I spent
sometime, added support to mkfs.ubifs, bootstraped a tiny Debian RFS and
compared. It looks like adding ZSTD support makes sense into mkfs.ubifs.

I believe Richard has somewhere patches for Kernel. I didn't look into
it even checked if the resulting image can be decompressed again.

Sebastian


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
