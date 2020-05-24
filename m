Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE8F1E01B9
	for <lists+linux-mtd@lfdr.de>; Sun, 24 May 2020 21:07:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=77+wNSNjt1gKeLj+5oQxMqf2wJCVSqrMBSBOxn8Z4RQ=; b=avAdqqvz63GUg3
	TJphml2a+lpGKUMfMO6tpfU6Jb+3HjI3q4hKFvw3b8e/0NGvOy3yOwfVXdlDCnkC8cbY68QXomCj+
	HP9ZhT92qfqB8ewCx63TIemPCTAe/81wVIkSEKeiwyH7XVeqrc9zkvVyP0wZSmBXkcwELxipNmLVT
	kuEV870oD78yvLt+MOJvn03wmkZe5BFgNKUP1gF/cMEl8Uua7lluI2NhL+qEvqHBYg0uDIQQu0/ig
	tp568PFD234d6D6g1UIPJJ3H6pmA/Z+d3zCuRx0qbNjqR3Mq2u7HEAeML/yLM9tRGGV8NY0o9ahGM
	MTmeqZwjp47gQENcipFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcvy7-0005KI-2P; Sun, 24 May 2020 19:07:31 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcvv3-0000hl-5x
 for linux-mtd@lists.infradead.org; Sun, 24 May 2020 19:04:22 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 352E7240002;
 Sun, 24 May 2020 19:04:19 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
	linux-mtd@lists.infradead.org
Subject: Re: [PATCH v2 52/62] mtd: rawnand: stm32_fmc2: Stop using
 nand_release()
Date: Sun, 24 May 2020 21:04:18 +0200
Message-Id: <20200524190418.5450-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200519130035.1883-53-miquel.raynal@bootlin.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: 335c41ab42833c428d25b51b8641479710f37c3b
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_120421_375692_FD69B6EC 
X-CRM114-Status: UNSURE (   6.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Christophe Kerello <christophe.kerello@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, 2020-05-19 at 13:00:25 UTC, Miquel Raynal wrote:
> This helper is not very useful and very often people get confused:
> they use nand_release() instead of nand_cleanup().
> 
> Let's stop using nand_release() by calling mtd_device_unregister() and
> nand_cleanup() directly.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> Cc: Christophe Kerello <christophe.kerello@st.com>
> Reviewed-by: Christophe Kerello <christophe.kerello@st.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next.

Miquel

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
