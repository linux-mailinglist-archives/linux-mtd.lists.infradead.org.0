Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE6B113B094
	for <lists+linux-mtd@lfdr.de>; Tue, 14 Jan 2020 18:11:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p3wMOovEiXOiNClB5o1eu8BPlzSiR8cXGrlnNpPUy/c=; b=EEhtlR7Tha3RUt
	0w4P4EOEz/rSydhQnIab5GHgrXqDTy3/+oZwr+UGNjyK9+bIcMOwAhxz67MpppK3FkqgheT8FhapH
	tRu/UnlhyCh31LDkAdnUmsLGHSf+AKMTNy041tTsu0tW5qsxY9gFXsMJksKxQaFFD6BithTUmKMwM
	Lo1LTTblBhVx5PPxl3rbafWFsn7KLe/UNZxZjM24svjNKYS6dcg3xwtdGoWRwRVcC2I895VLpL7Jc
	a6h9g+qWPA+o4MvV7KcqFgceuzobkbv2mtPP2K6anRbt6MvxzNxE1/bF4D5zUs4hWJmRoKnaAbK6O
	xU43+WgGeiwD7croxaRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irPiR-0005q1-Py; Tue, 14 Jan 2020 17:10:55 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irPgf-0003LU-M7
 for linux-mtd@lists.infradead.org; Tue, 14 Jan 2020 17:09:11 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13.lan (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 51844E0011;
 Tue, 14 Jan 2020 17:09:00 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Chen Wandun <chenwandun@huawei.com>, kyungmin.park@samsung.com,
 miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] nand: onenand: samsung: remove variable 'tmp' set but not
 used
Date: Tue, 14 Jan 2020 18:08:49 +0100
Message-Id: <20200114170849.2229-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <1574424534-141265-1-git-send-email-chenwandun@huawei.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: dce02513d9922dd41c49a4bf1b9fd21c22fee76c
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_090905_877015_49E97461 
X-CRM114-Status: UNSURE (   4.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, 2019-11-22 at 12:08:54 UTC, Chen Wandun wrote:
> Fixes gcc '-Wunused-but-set-variable' warning:
> drivers/mtd/nand/onenand/samsung_mtd.c: In function s3c_onenand_check_lock_status:
> drivers/mtd/nand/onenand/samsung_mtd.c:731:6: warning: variable tmp set but not used [-Wunused-but-set-variable]
> 
> Signed-off-by: Chen Wandun <chenwandun@huawei.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next, thanks.

Miquel

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
