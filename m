Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB65B1AFD83
	for <lists+linux-mtd@lfdr.de>; Sun, 19 Apr 2020 21:31:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RcPT0rJMaufjFdyqgu0qkKzhNHH2Jb1RrLwFlzzDre0=; b=KKQ5aiqMz2xPBv
	6D4oE+nkqysaq3ICADqCVCa2+OPPPYgNDMPoOWtGPiQzQWNLT8SSI1AszwgUriEqmv+mj1LW26czR
	vgTnHK3AC1Rg+f23P8+ZueZXwXQJrJyLwZOV/WFbXb7jqzFg8pyeIseHfMWnKtso7z0MgE7iACP2B
	EFQgeuZ9B8JEXqZ0fmk6+Xzm86ZrYicDPpdL44h5t9/Cg4O4BMmz2gdUEsa0LtikdIyHa2l7GtBtG
	Yi7XG9JQ01OpTIBt7p663MU5oYGZ5yc/W3CpoAOqB6Z8+awxOG6rdNJp8n3bYpyJfKTz/D7P+Nh8j
	+edy9nzBuCTFEAP64Wlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQFeZ-0004EW-QW; Sun, 19 Apr 2020 19:30:55 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQFeN-0004Ca-Ia
 for linux-mtd@lists.infradead.org; Sun, 19 Apr 2020 19:30:44 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id B56BA2A0319;
 Sun, 19 Apr 2020 20:30:41 +0100 (BST)
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
	linux-mtd@lists.infradead.org
Subject: [PATCH 0/4] mtd: rawnand: au1550nd: Convert the driver to exec_op()
Date: Sun, 19 Apr 2020 21:30:33 +0200
Message-Id: <20200419193037.1544035-1-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.25.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_123043_741778_AF9035FC 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, linux-mips@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Boris Brezillon <boris.brezillon@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hello,

An attempt at converting the au1550nd to exec_op(). The patchset it only
compile-tested, so that'd be great to have someone with a db1550 to test
it. If there's no one owning such a board, maybe we should consider
removing it, as such ancient drivers make the NAND subsystem maintenance
harder.

Regards,

Boris

Boris Brezillon (4):
  mtd: rawnand: au1550nd: Stop using IO_ADDR_{R,W} in
    au_{read,write}_buf[16]()
  mtd: rawnand: au1550nd: Implement exec_op()
  mtd: rawnand: au1550nd: Get rid of the legacy interface implementation
  mtd: rawnand: au1550nd: Patch the read/write buf helper prototypes

 drivers/mtd/nand/raw/au1550nd.c | 410 +++++++++++---------------------
 1 file changed, 135 insertions(+), 275 deletions(-)

-- 
2.25.2


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
