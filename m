Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEED91EA09A
	for <lists+linux-mtd@lfdr.de>; Mon,  1 Jun 2020 11:13:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IXFVSBIjEQbhIi/Bz8SY7nGcevKveUhIuvFJL0wj1dc=; b=Nhg8FUpXWlXExO
	CYD2/SoAIVLz45j1Ry54kwx1FjJH1k02v1unXzkCim64RPsjw7RCoXxWQj6LyTRPHZFYG/CCgPvil
	0IVS9qkZPcoKSHSUN6wgnnfVT9nsy/xONXdERuf70F7E6h9x5ifghJQi5F3HvaAzS3Fhf3+MQuypx
	VmBLR/BjzHj5KVSa2h/J7gIhK3nGUWKDe6XL0kZ3KAt2uOx5HeOtu8EboIlGJtdyBAfonHhnf1bG1
	x7RejLi5UWoPdm37UmQvpnSVcBHbKy6cKAPEEd8D+3T7gBVehvwN/O3gGsQQ79y/m7/7OiA6lztRz
	A56ZnkmsWoC9mhKXILZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfgVO-0004MM-Pm; Mon, 01 Jun 2020 09:13:14 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfgVA-0004IM-RC
 for linux-mtd@lists.infradead.org; Mon, 01 Jun 2020 09:13:03 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 67979171002AB7AD6DC3;
 Mon,  1 Jun 2020 17:12:59 +0800 (CST)
Received: from huawei.com (10.175.104.175) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.487.0; Mon, 1 Jun 2020
 17:12:52 +0800
From: Zhihao Cheng <chengzhihao1@huawei.com>
To: <linux-mtd@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH] ubi: check kthread_should_stop() after the setting of task
 state
Date: Mon, 1 Jun 2020 17:12:31 +0800
Message-ID: <20200601091231.3794350-1-chengzhihao1@huawei.com>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
X-Originating-IP: [10.175.104.175]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_021301_058172_1BCCF227 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.191 listed in wl.mailspike.net]
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
Cc: richard@nod.at, yi.zhang@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

A detach hung is possible when a race occurs between the detach process
and the ubi background thread. The following sequences outline the race:

  ubi thread: if (list_empty(&ubi->works)...

  ubi detach: set_bit(KTHREAD_SHOULD_STOP, &kthread->flags)
              => by kthread_stop()
              wake_up_process()
              => ubi thread is still running, so 0 is returned

  ubi thread: set_current_state(TASK_INTERRUPTIBLE)
              schedule()
              => ubi thread will never be scheduled again

  ubi detach: wait_for_completion()
              => hung task!

To fix that, we need to check kthread_should_stop() after we set the
task state, so the ubi thread will either see the stop bit and exit or
the task state is reset to runnable such that it isn't scheduled out
indefinitely.

Signed-off-by: Zhihao Cheng <chengzhihao1@huawei.com>
Cc: <Stable@vger.kernel.org>
Fixes: 801c135ce73d5df1ca ("UBI: Unsorted Block Images")
Reported-by: syzbot+853639d0cb16c31c7a14@syzkaller.appspotmail.com
---
 drivers/mtd/ubi/wl.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/mtd/ubi/wl.c b/drivers/mtd/ubi/wl.c
index 5146cce5fe32..a4d4343053d7 100644
--- a/drivers/mtd/ubi/wl.c
+++ b/drivers/mtd/ubi/wl.c
@@ -1628,6 +1628,19 @@ int ubi_thread(void *u)
 		    !ubi->thread_enabled || ubi_dbg_is_bgt_disabled(ubi)) {
 			set_current_state(TASK_INTERRUPTIBLE);
 			spin_unlock(&ubi->wl_lock);
+
+			/*
+			 * Check kthread_should_stop() after we set the task
+			 * state to guarantee that we either see the stop bit
+			 * and exit or the task state is reset to runnable such
+			 * that it's not scheduled out indefinitely and detects
+			 * the stop bit at kthread_should_stop().
+			 */
+			if (kthread_should_stop()) {
+				set_current_state(TASK_RUNNING);
+				break;
+			}
+
 			schedule();
 			continue;
 		}
-- 
2.25.4


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
