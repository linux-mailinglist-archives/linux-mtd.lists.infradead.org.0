Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA7D31BAD4F
	for <lists+linux-mtd@lfdr.de>; Mon, 27 Apr 2020 20:56:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Wbp8NFlLirRhAubi3HLBGjZQ3xnzu85jN3/fYOV5nwc=; b=GlHnhYWLkabSIZ
	1eQTTJBx4v/5Fz5OGujce/CrdKk4zJCwlZMxohhTWImxlh44bwlBD1xIS8r46GT15K9ARAq5/GcHy
	sdhlnwiPZLkns0S662wNoFxt/Y5TqMxK9hd7nxeuv7n4IjrcvAmqHf1AvLHlpDpJI996APIRnP+t8
	1hzVbMI1+nR3iNwEb2WUOSuR9bHx7toT/rgTqNehCXLkwb4Pw1L3KmEJWdICCUqHe5DhjXCEfwkAT
	1oVEmR/6Cw0tkAk1ev9X+ifuh/cWOEl6/vEPwQCLyvh1llLrLiooiwSNjqv9ZaVasc13+OcRDWheP
	E+amerPM+b0loloGeMmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT8vT-00088j-KH; Mon, 27 Apr 2020 18:56:19 +0000
Received: from gateway22.websitewelcome.com ([192.185.47.100])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT8vI-00087q-G8
 for linux-mtd@lists.infradead.org; Mon, 27 Apr 2020 18:56:09 +0000
Received: from cm12.websitewelcome.com (cm12.websitewelcome.com [100.42.49.8])
 by gateway22.websitewelcome.com (Postfix) with ESMTP id E9A3EA32
 for <linux-mtd@lists.infradead.org>; Mon, 27 Apr 2020 13:56:05 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id T8vFju9AB1s2xT8vFjVR1C; Mon, 27 Apr 2020 13:56:05 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Type:MIME-Version:Message-ID:Subject:
 Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MkwcCR3lst8/B7n+4ulIUXVmvitCgG29H/hIsQNGTwQ=; b=AeU7CXrxhdg9fpvzHvSe2zoXvw
 eyL94sVa/mqO6UoWJcna3+3WJgMcMSp+rWmLFi3KJjN+D17t5e0HI5BSf7RVCz9+SQgmt8SR4Klfh
 cgQ7pSm6LV64O5i5YZ9QJwkpLTyGZQAqGkyQvX5a9Ueivthd3XzVSZqTO3/U8nriuffjsO70i4WEa
 ia9E8VNkhvzxoUHPzvTW/NLs5sp2Ju/g16I5qmFgVM0jHkhUH0xQQJFit/fb5ow7hxJcFz9mljXjk
 66OgOi0/9pQmfERp0iMEy+xzEKB8YOhGn6xDgSQI0GvlMhZNR85khKUeXU35Nip0nRmH/xArBbmxc
 lEPNmwkw==;
Received: from [201.162.241.110] (port=27793 helo=embeddedor)
 by gator4166.hostgator.com with esmtpa (Exim 4.92)
 (envelope-from <gustavo@embeddedor.com>)
 id 1jT8vF-000Yrj-Dk; Mon, 27 Apr 2020 13:56:05 -0500
Date: Mon, 27 Apr 2020 14:00:23 -0500
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 0/3] mtd: lpddr: Fix bad logic bug in print_drs_error
Message-ID: <cover.1588013366.git.gustavo@embeddedor.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 201.162.241.110
X-Source-L: No
X-Exim-ID: 1jT8vF-000Yrj-Dk
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (embeddedor) [201.162.241.110]:27793
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 11
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_115608_585318_FD38AA2C 
X-CRM114-Status: UNSURE (   4.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.47.100 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>, Joe Perches <joe@perches.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi,

This series aims to fix a bad logic bug in print_drs_error, which is
tagged for -stable.  The series also include some formatting fixups.

Thanks

Gustavo A. R. Silva (3):
  mtd: lpddr: Fix bad logic in print_drs_error
  mtd: lpddr: Replace printk with pr_notice
  mtd: lpddr: Move function print_drs_error to lpddr_cmds.c

 drivers/mtd/lpddr/lpddr_cmds.c | 33 +++++++++++++++++++++++++++++++++
 include/linux/mtd/pfow.h       | 32 --------------------------------
 2 files changed, 33 insertions(+), 32 deletions(-)

-- 
2.26.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
