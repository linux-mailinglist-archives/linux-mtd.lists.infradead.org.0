Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F139A1822F4
	for <lists+linux-mtd@lfdr.de>; Wed, 11 Mar 2020 20:58:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Sh+ahJQ5kkd00ESzTY4o3iWP7HpoUJW/X5Ki42nGtQY=; b=jAm
	2zMfgPIer7+G8aZU6m6mlkuAMplDY4KSO/QS4nXurEcE42Tjs5mTszTAZAadR1iVTcO6uFrcqjZm1
	lE3pX8X9m4xRIT9WaJiSDk6Wij6G45Ipux+MpyshxadHJ91l1aGD/yTTWIoHrO79/gc9KEviAPb8Y
	llnlofdWNvoZiAFYYeJ7j4tG/Sgi/sYhV1fD8+kAQ40DcHXbosURV6t5pm232Vc/rGanm6aFTQXDn
	tE+H3hAZLjdlHAdv1W8/mje9nRO8gxvEoxsLebF5w7k3Tq9C8eIp9BY1PJ7SEu0rNlxvUzqyzO1Qx
	oE9k8Cc/6GOST/oohQsGTBSBx1jCoYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC7VH-00018U-2E; Wed, 11 Mar 2020 19:58:55 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC7V5-00016u-HV
 for linux-mtd@lists.infradead.org; Wed, 11 Mar 2020 19:58:45 +0000
Received: by mail-ot1-x341.google.com with SMTP id t28so825535ott.5
 for <linux-mtd@lists.infradead.org>; Wed, 11 Mar 2020 12:58:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cartesi-io.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=O035c6fRep3iXwflvDLo/h3F2O2fKPizFR/D5QuKMKc=;
 b=zyO1G1aI14jyIYzGWm0CPyY08RucGFFNBgeQSXAVGAPqRc26yJTTkHde2tsmPMby4l
 u+w5Uw+25LyBbO38/jyQXSuHk9BinRb/20/CKaKRjeLhypb43UQS834VW6d4FeGFbtU1
 yHB3+QhW8WO/nyhRkLL8vgW7KFg2kJPs/nZGPXetLsrq4WIejEEcew3NpzoXd26PxgHw
 ImFUMkzc91yYloT3juovYYVvQ0uLnHdCE3kRvnbLxMFpqKMRXzJFoUA+insNYlT/swrn
 edx3X6Qcp2C/NcqzlLM2RqJyP8gfSEK+p2Vy9d7TfWF1PPkOmw58OpRDLBvllGTWJ7j4
 NOEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=O035c6fRep3iXwflvDLo/h3F2O2fKPizFR/D5QuKMKc=;
 b=DHSX7oULR0RvmQv+edpr3nB78PqFLQqShGTc26HMVZHwr6qD1ClHFn0D0FuSxyOzNY
 diU5Mp+QrSh4C4qo7Aa0XnnXujXEkUszjaHvhYI6+BgqxmkJc8LBMQ77cxDaoUpLHHQq
 cekhUSUfgdUzKmdKFYWICf7Ugmcr+W2gfVgxQXGTXAoDIdBC4VFaML33+KH9IdNNNJNv
 kzPX1kWpircooT+ZlAo/HLXVLHgf+BkVcp3JT5sk0Eta0lpYLaQsgTSTWk1YDld8TQlm
 wlsu/xLRMM/BK6h9ZxN6d9f5+WoCGFU1AAUdMKkIMtdJOOdDdlMvf+K2XIreJNXBFrXz
 kAlw==
X-Gm-Message-State: ANhLgQ1YqCNzDW39ePNtDnickC4OdHy1JNqcEDZvq770zQzQ8GfgchCP
 bDIfBHaN1ShOlYllybPh408nYJhclrdn/JOF7t0l1SCMYDs=
X-Google-Smtp-Source: ADFU+vvC56368HQnYZqNv9ZhG89vVtGJpyn0ioIaql7/mHzwJfhn0Hj/GLxKCsXovq3nic3dvXlqjWdnc5AlrcpeLPY=
X-Received: by 2002:a9d:49:: with SMTP id 67mr3562841ota.163.1583956721978;
 Wed, 11 Mar 2020 12:58:41 -0700 (PDT)
MIME-Version: 1.0
From: Victor Fusco <victor@cartesi.io>
Date: Wed, 11 Mar 2020 16:58:31 -0300
Message-ID: <CAHpUXUx8puujULLTtLTDEvEVG+gasJcmj9QxLC5vf69+WzL74g@mail.gmail.com>
Subject: Possible regression regarding the name and size of MTD devices on
 kernel 5.5.4
To: linux-mtd@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_125843_722674_DFF57F09 
X-CRM114-Status: GOOD (  15.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi,

I'm investigating a regression regarding the name and size of MTD devices that
happened here while migrating to kernel 5.5.4. I'm not sure if it is an error
or misuse of our part, but it was working properly on kernel 4.20.8. It seems
that, on our use case, the new implementation is not honoring the
"linux,mtd-name" and "reg" fields defined on the Device Tree.

I patched the kernel to make it work but, as it's not clear if it's an error
or misuse, I decided to send this message to check if somebody could help.

The devices are defined with a combination of the Device Tree entries and
Kernel Command Line parameters. The following are some of the information that
was collected during this investigation.


The relevant entries of the Device Tree:
----------
~ # dtc -I dtb /sys/firmware/fdt
[...]
flash@8000000000000000 {
    #address-cells = <0x02>;
    #size-cells = <0x02>;
    compatible = "mtd-ram";
    bank-width = <0x04>;
    reg = <0x80000000 0x00 0x00 0x3c00000>;
    linux,mtd-name = "flash.0";
};

flash@8000000004000000 {
    #address-cells = <0x02>;
    #size-cells = <0x02>;
    compatible = "mtd-ram";
    bank-width = <0x04>;
    reg = <0x80000000 0x4000000 0x00 0x3c00000>;
    linux,mtd-name = "flash.1";
};
[...]
----------

The log entry for the kernel command line:
----------
[    0.000000] Kernel command line: console=hvc0 rootfstype=ext2
root=/dev/mtdblock0 rw mtdparts=flash.0:-(root);flash.1:-(myfs)
----------

The current log of the MTD drivers:
----------
[    0.035397] physmap-flash 8000000000000000.flash: physmap platform
flash device: [mem 0x8000000000000000-0x8000000003bfffff]
[    0.035934] physmap-flash 8000000004000000.flash: physmap platform
flash device: [mem 0x8000000004000000-0x8000000007bfffff]
----------

The information collected from the /sys/block:
----------
~ # cat /sys/block/mtdblock0/device/name
8000000000000000.flash
~ # cat /sys/block/mtdblock0/device/size
33554432
~ # cat /sys/block/mtdblock1/device/name
8000000004000000.flash
~ # cat /sys/block/mtdblock1/device/size
33554432
----------

The expected names and sizes were:

root, 0x3c00000
myfs, 0x3c00000

But we got:

8000000000000000.flash, 0x2000000
8000000004000000.flash, 0x2000000

And while using it we can observe some errors in the kernel log that seems to
be related to the wrong size being detected:
----------
~ # ls -lR
[...]
./usr/lib:
[ 1528.426466] attempt to access beyond end of device
[ 1528.426481] mtdblock1: rw=0, want=70838, limit=65536
[ 1528.426495] attempt to access beyond end of device
[ 1528.426510] mtdblock1: rw=0, want=88988, limit=65536
[ 1528.426551] EXT2-fs (mtdblock1): error: ext2_readdir: bad page in #590
total 0
[...]
----------

Searching into the git history I've found two changes that seems to have
introduced this new behavior:

1. The merge of physmap_of.c into physmap-core.c made it stop checking the
mtd_name

https://github.com/torvalds/linux/commit/642b1e8dbed7bbbf8c4deb3c9a0496f17278badc#diff-25f9c3817991d18e6c24935d91953344L223

The original implementation was:

drivers/mtd/maps/physmap_of_core.c:223
----------
        info->list[i].map.name = mtd_name ?: dev_name(&dev->dev);
----------

And the new one:

drivers/mtd/maps/physmap-core.c:237
----------
        info->maps[i].name = dev_name(&dev->dev);
----------

2. The merge gpio-addr-flash.c into physmap-core.c made it calculate the size
differently. Not sure if the new implementation is accurate when there is no
gpio.

https://github.com/torvalds/linux/commit/ba32ce95cbd9876eb7f5ec39af87829c8f13a337#diff-82fc46753342e94dc0772828e76af427L372

The original implementation was:

drivers/mtd/maps/physmap-core.c:372
----------
        info->maps[i].size = resource_size(res);
----------

And the new one:

drivers/mtd/maps/physmap-core.c:507
----------
        info->win_order = get_bitmask_order(resource_size(res)) - 1;
        info->maps[i].size = BIT(info->win_order +
                     (info->gpios ?
                      info->gpios->ndescs : 0));
----------

I did a small change on these points to check if the mtd_name was defined like
before and use resouce_size(res) when there is no gpios defined and it seems to
have fixed our problem.

The relevant kernel log entries of the MTD drivers after the patch:
----------
[    0.035116] physmap-flash 8000000000000000.flash: physmap platform
flash device: [mem 0x8000000000000000-0x8000000003bfffff]
[    0.035146] 1 cmdlinepart partitions found on MTD device flash.0
[    0.035163] Creating 1 MTD partitions on "flash.0":
[    0.035178] 0x000000000000-0x000003c00000 : "root"
[    0.035694] physmap-flash 8000000004000000.flash: physmap platform
flash device: [mem 0x8000000004000000-0x8000000007bfffff]
[    0.035723] 1 cmdlinepart partitions found on MTD device flash.1
[    0.035740] Creating 1 MTD partitions on "flash.1":
[    0.035755] 0x000000000000-0x000003c00000 : "myfs"
----------

The information collected from the /sys/block after the patch:
----------
~ # cat /sys/block/mtdblock0/device/name
root
~ # cat /sys/block/mtdblock0/device/size
62914560
~ # cat /sys/block/mtdblock1/device/name
myfs
~ # cat /sys/block/mtdblock1/device/size
62914560
----------


Should our settings on the Device Tree and kernel command line work properly?

Do the changes I made make sense?

Best regards,

Victor Fusco

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
