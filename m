Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9D46E4D49
	for <lists+linux-mtd@lfdr.de>; Fri, 25 Oct 2019 15:59:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L4u+K2Dqsku/VOfXafqg8D9CQZ2MuSBc/ZVnpsfSxow=; b=Fm7QbNngrEOsMV
	ognne/x78+LhXkjK5t8ya02zGR9Xz7v5YLF3/p7nASXKNfKzaluutVF5dGwSTd4/eiwaxO+BaOiM1
	hwpTyfL38MzNJtqWrg7o/8MTn6SrrVTp+nLAZe3yyVmN2GPWcUCNUKbeBuIuIHGQzzq/BWc1PQEH+
	Zmyc49/2yukVaJf9IP5+0MEUUpEPITysiEnZzypY5TgV88DzyYm0Hb8hZkFcVZOovdcM+b4wEFk2w
	FanGIC8Keds3/A5B5KKPtA2o/YO3FUJl318yxfe8vPMn6Qulhh0q/Pz8gwNrt7XAs8c9z3D9D8GSz
	tqzQizaK4lZG/xRtICug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO07f-0004RT-IQ; Fri, 25 Oct 2019 13:59:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO07R-0004Qo-Ou
 for linux-mtd@lists.infradead.org; Fri, 25 Oct 2019 13:59:11 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C205C22470;
 Fri, 25 Oct 2019 13:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572011949;
 bh=yu2re7QlOLOylGKR+ttvD8dXbCgph8uPZ6I6K2Me1Uk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=EEK4FY52csoGVpLw4snk84ha26Lg4mkY1e0kwrSrN3r2FJymPErETz6pIjxQebJan
 899tuC/P7I/w3CYTH6KW8XLu9iK+lwsbWVxjnZG7G4eI+ZbS0NpPGRpnvsxls3uYHR
 OUIIQdL3gby8HdlF0PWSGBrqcIU2JS8NpJxm5Fio=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.4 14/16] ubi: ubi_wl_get_peb: Increase the number of
 attempts while getting PEB
Date: Fri, 25 Oct 2019 09:58:38 -0400
Message-Id: <20191025135842.25977-14-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191025135842.25977-1-sashal@kernel.org>
References: <20191025135842.25977-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_065909_858512_954C377D 
X-CRM114-Status: GOOD (  16.95  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Richard Weinberger <richard@nod.at>,
 Zhihao Cheng <chengzhihao1@huawei.com>, linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Zhihao Cheng <chengzhihao1@huawei.com>

[ Upstream commit 8615b94f029a4fb4306d3512aaf1c45f5fc24d4b ]

Running stress test io_paral (A pressure ubi test in mtd-utils) on an
UBI device with fewer PEBs (fastmap enabled) may cause ENOSPC errors and
make UBI device read-only, but there are still free PEBs on the UBI
device. This problem can be easily reproduced by performing the following
steps on a 2-core machine:
  $ modprobe nandsim first_id_byte=0x20 second_id_byte=0x33 parts=80
  $ modprobe ubi mtd="0,0" fm_autoconvert
  $ ./io_paral /dev/ubi0

We may see the following verbose:
(output)
  [io_paral] update_volume():108: failed to write 380 bytes at offset
  95920 of volume 2
  [io_paral] update_volume():109: update: 97088 bytes
  [io_paral] write_thread():227: function pwrite() failed with error 28
  (No space left on device)
  [io_paral] write_thread():229: cannot write 15872 bytes to offs 31744,
  wrote -1
(dmesg)
  ubi0 error: ubi_wl_get_peb [ubi]: Unable to get a free PEB from user WL
  pool
  ubi0 warning: ubi_eba_write_leb [ubi]: switch to read-only mode
  CPU: 0 PID: 2027 Comm: io_paral Not tainted 5.3.0-rc2-00001-g5986cd0 #9
  ubi0 warning: try_write_vid_and_data [ubi]: failed to write VID header
  to LEB 2:5, PEB 18
  Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS rel-1.12.0
  -0-ga698c8995f-prebuilt.qemu.org 04/01/2014
  Call Trace:
    dump_stack+0x85/0xba
    ubi_eba_write_leb+0xa1e/0xa40 [ubi]
    vol_cdev_write+0x307/0x520 [ubi]
    vfs_write+0xfa/0x280
    ksys_pwrite64+0xc5/0xe0
    __x64_sys_pwrite64+0x22/0x30
    do_syscall_64+0xbf/0x440

In function ubi_wl_get_peb, the operation of filling the pool
(ubi_update_fastmap) with free PEBs and fetching a free PEB from the pool
is not atomic. After thread A filling the pool with free PEB, free PEB may
be taken away by thread B. When thread A checks the expression again, the
condition is still unsatisfactory. At this time, there may still be free
PEBs on UBI that can be filled into the pool.

This patch increases the number of attempts to obtain PEB. An extreme
case (No free PEBs left after creating test volumes) has been tested on
different type of machines for 100 times. The biggest number of attempts
are shown below:

             x86_64     arm64
  2-core        4         4
  4-core        8         4
  8-core        4         4

Signed-off-by: Zhihao Cheng <chengzhihao1@huawei.com>
Signed-off-by: Richard Weinberger <richard@nod.at>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/mtd/ubi/fastmap-wl.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/ubi/fastmap-wl.c b/drivers/mtd/ubi/fastmap-wl.c
index 69dd21679a30c..99aa30b28e46e 100644
--- a/drivers/mtd/ubi/fastmap-wl.c
+++ b/drivers/mtd/ubi/fastmap-wl.c
@@ -205,7 +205,7 @@ static int produce_free_peb(struct ubi_device *ubi)
  */
 int ubi_wl_get_peb(struct ubi_device *ubi)
 {
-	int ret, retried = 0;
+	int ret, attempts = 0;
 	struct ubi_fm_pool *pool = &ubi->fm_pool;
 	struct ubi_fm_pool *wl_pool = &ubi->fm_wl_pool;
 
@@ -230,12 +230,12 @@ int ubi_wl_get_peb(struct ubi_device *ubi)
 
 	if (pool->used == pool->size) {
 		spin_unlock(&ubi->wl_lock);
-		if (retried) {
+		attempts++;
+		if (attempts == 10) {
 			ubi_err(ubi, "Unable to get a free PEB from user WL pool");
 			ret = -ENOSPC;
 			goto out;
 		}
-		retried = 1;
 		up_read(&ubi->fm_eba_sem);
 		ret = produce_free_peb(ubi);
 		if (ret < 0) {
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
