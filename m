Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0020A38CDE
	for <lists+linux-mtd@lfdr.de>; Fri,  7 Jun 2019 16:24:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FmcUptgMORhRfBJvtCP1HJ7CaYbq7sE/zzQNSu3w6fE=; b=dSkeqOhiXi+MPx
	yykw5HMEEaohImMZH6UpUste7bPpcagpafnZF1iY6xq+M/24PQLLyw4DMdVsBiaQbmodhR+yroqW1
	bW4Lhin/8LrqcC1H/BGuT+vm2akWeZ0efG7s7mi//NqulGcDc5yeDnjhXKfwLMYN7XGfcXx0fWJK2
	8gKR4oLAdxjUhg2TYP9tpyk9gUUyy49DIrAIoXpQoby0HW9oqfYk/ZKOk7MSkI13ibwhcOr1h/vm6
	/TZ2GTzMod//rY1kZsmbFp4gpVwvEkmFB84DELCvRfTi+KwxldwDdPZv4CtMSurfyFIiuVGXTdodg
	9eLFq6l0EFDVFDDdhS2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZFmt-0005T1-9W; Fri, 07 Jun 2019 14:24:11 +0000
Received: from host2.emcraft.com ([138.197.218.152])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZFmi-0005Sa-OU
 for linux-mtd@lists.infradead.org; Fri, 07 Jun 2019 14:24:02 +0000
Received: from sergmir.emcraft.com (unknown [176.110.122.116])
 by host2.emcraft.com (Postfix) with ESMTPSA id D330B40047B;
 Fri,  7 Jun 2019 07:23:57 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 host2.emcraft.com D330B40047B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emcraft.com;
 s=default; t=1559917438;
 bh=iesEFYYe/Uk6k41GsIhDTfcfq5h3qh0sNGGMRN8h1V0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=wMNn99QMoB+vE4iaYjaP1HWxsFQ1wwbrVL22KkhUfBh046U9rqf7PAV3YUMDjbLRN
 Fqtwh4TzfWnqnI4a0O55ac7gUPSQ4qLlbPGLviW8Hpz6kYh2Tm9KztWTShuYDtKRTv
 kkzbOZyAILZrp2OmO1QE+4w8nET4Cy+ENV9/IsU8=
Date: Fri, 7 Jun 2019 17:23:55 +0300
From: Sergei Poselenov <sposelenov@emcraft.com>
To: Richard Weinberger <richard.weinberger@gmail.com>
Subject: Re: UBIFS: file data corruption during the power cut-off test
Message-ID: <20190607172355.6541fa51@sergmir.emcraft.com>
In-Reply-To: <CAFLxGvy1BTuLkcn=7N=FG_q5cBgj5L1YzyhiakVFewYPyr6dzA@mail.gmail.com>
References: <20190606121037.40a1cc5e@sergmir.emcraft.com>
 <CAFLxGvx4iqpU8pq8CPwah9M+Qa2YkpXEiSmndeVy2mLadNQn_g@mail.gmail.com>
 <20190606210803.481cbc5d@sergmir.emcraft.com>
 <CAFLxGvy1BTuLkcn=7N=FG_q5cBgj5L1YzyhiakVFewYPyr6dzA@mail.gmail.com>
Organization: Emcraft Systems
X-Mailer: Claws Mail 3.15.1-dirty (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Spam-Status: No, score=-3.0 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,URIBL_BLOCKED autolearn=disabled
 version=3.4.1
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on host2.emcraft.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_072400_957635_4705191B 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hello Richard,

On Thu, 6 Jun 2019 20:13:07 +0200 Richard Weinberger <richard.weinberger@gmail.com> wrote:

> On Thu, Jun 6, 2019 at 8:08 PM Sergei Poselenov <sposelenov@emcraft.com> wrote:
> > This is understood. However, on the file length that is written to the partition, I'd expect that the file content will be the same as in the original file. This is not so.
> > Is it expected, or is it a deficiency of UBI?  
> 
> Please show in detail what you are doing, on syscall level, and what
> the expected output is.
> 

Here is my test:
/mnt/data1 # for i in `seq 0 99`; do
> dd if=/bin/busybox of=test${i}; done

During the  test, the board is powered off.

After bootup:
/mnt/data1 # ls -l
-rw-r--r--    1 root     root        396795 Jan  8 23:58 test0
-rw-r--r--    1 root     root        396795 Jan  8 23:58 test1
-rw-r--r--    1 root     root        113664 Jan  8 23:58 test2
/mnt/data1 #
/mnt/data1 # md5sum /bin/busybox *
23376319de62934c3859615e6244aae0  /bin/busybox
23376319de62934c3859615e6244aae0  test0
23376319de62934c3859615e6244aae0  test1
87cd1d1a28896e63eb039d75efef43a3  test2

As expected, test2 is shorter, hence has a different checksum.

Now, I' overwriting the content of the "test0" with "test2", without "test0" truncation:
mnt/data1 # dd if=test2 of=test0 conv=notrunc
222+0 records in
222+0 records out
113664 bytes (111.0KB) copied, 0.859668 seconds, 129.1KB/s
/mnt/data1 # md5sum *
23376319de62934c3859615e6244aae0  test0
23376319de62934c3859615e6244aae0  test1
87cd1d1a28896e63eb039d75efef43a3  test2
/mnt/data1 #

For this particular test pass, the content of test2 matches the content of the original file test0, so overwriting test0 with test2 doesn't change the data.

However, upon retry of the very same test from the beginning (with the power cut-off in the middle) it's easily to have the content of test2 (exactly the last 512 bytes in my case) which doesn't match test0, so "dd if=test2 of=test0 conv=notrunc" will result in test0 with a different checksum.

To remind, the partition is mounted with the "sync" option.

Thanks!

Regards,
Sergei


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
