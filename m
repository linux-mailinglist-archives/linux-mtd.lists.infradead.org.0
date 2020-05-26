Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A53C11E261E
	for <lists+linux-mtd@lfdr.de>; Tue, 26 May 2020 17:55:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=qf8dCK2rZAlPiaMjKNh+TWSTQj1H3EvldzkB3qvr0YI=; b=hkn
	gsO6es1GA044XxaVkv+1REMjPhA1Z3Zl/xhu/7uXseJL+HTjnXvM6dDQrFtPRS/ALwnzfRuvU21+t
	H51G5f7CmB1+j3VeZZRihugn9PhWj+3xGc3xsdpEbCP4Fg1NmIadqiDfDm733hKbW4n03uPlyqtCn
	Hz75HCy98CtaVTXgZkMpOZtFiGzf9Zo9cbLADMD0XHYi5kTcZeyzuEEO4ygRmupQmbliFqSz8mwX3
	kX2ihzNPocWRCn46XAkrroUJV+IS+5F2RB/khg3bzY0f1HWsnK7nxJ7loS2CcrKDPIaFz7fm89iM6
	WJrEYLZDmmr8e85JJfYekTPKaKd/jNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdbvK-0007f1-SG; Tue, 26 May 2020 15:55:26 +0000
Received: from mail-qv1-xf32.google.com ([2607:f8b0:4864:20::f32])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdbuu-0007bD-GQ
 for linux-mtd@lists.infradead.org; Tue, 26 May 2020 15:55:01 +0000
Received: by mail-qv1-xf32.google.com with SMTP id er16so9677107qvb.0
 for <linux-mtd@lists.infradead.org>; Tue, 26 May 2020 08:54:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=BsQP6fRdg5RL1dFc3HchazhBnmpsv8sSvKvK9eUTOHI=;
 b=mtgq2Y1e/Er0KeNdiILN6oU0lWb72ncJILMV11PpEKcacEWFYa8/2ZUAuLrTBe+C7j
 dgvQIzF99QnUBluRX7Vko4D062YQCYgMn7t2TrGUr+/76u0LXU8oR7NZKVG0rm8Ztpma
 3I0ZlYAtSz0JKaJCXgzkCKf5ZjL7mlps1IJdAhklY3GBQX01Z3ZYQfXwSTDIY6J6YDiD
 Ju8R7YY0IScatEq886iQySZH9qcgs5IeEyYol6L6funb8juM/CPp61c+/rFdmIcb+7lC
 vBJsFOjb7HLYy+2WzZ6dmN9DkdB/1giyGJ4yVV4LqS9AbzALJP0k/KldYxrm9r+Te/CT
 T32A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=BsQP6fRdg5RL1dFc3HchazhBnmpsv8sSvKvK9eUTOHI=;
 b=JK64ZCD9TEIHMS4eGeXrhzevFL6oO5h88m5htCd6ewy4G6ypUTvmQiPnqmzRtRGXDP
 Dk4yQhTXCL3ij5sGvWjzZNLmnHQp+gRCAb+C2V0TFTKvS1x/6yUkS31EO61S1A4L6Nnr
 lsVdtgs56w/f2tLu6p90ntpp3V4RFVT9DljMCL/cjcXQEEf4ySFvFUUwK+qNlgW/IWsW
 gQcxR0L0EdAzOwzehcux1kAfsCiYNdyRtSgaeFU5ZCB3fhlxbU+wFlFH8sWdbKWtB1v/
 enm8dD8WQN9kecvJgJ3oaIsX8HXdDNWaJGzlNrM44X32jcS/Zmjr/70cQgAZeKCTOsOs
 /xlw==
X-Gm-Message-State: AOAM531pkn6pIijmgZsMAv83J7FiKiGBDUNls59JNZYIZFjaUr9hpvMS
 Ioh8LmnqtlKR+g/5emxIQ/rYQ3ImnDnJQhNLKx1VekD7
X-Google-Smtp-Source: ABdhPJwz8S7RNCnF4LB0v/UZdBBYpEXlzXnakuCbPpyfu+D+vAE5yn1zu03B4sTIH0jXG22EKb4JbCa5XCJw3pQzEC8=
X-Received: by 2002:a0c:a8cf:: with SMTP id h15mr3617798qvc.104.1590508496497; 
 Tue, 26 May 2020 08:54:56 -0700 (PDT)
MIME-Version: 1.0
From: Patrick Doyle <wpdster@gmail.com>
Date: Tue, 26 May 2020 11:54:30 -0400
Message-ID: <CAF_dkJBQJSY_Fg5H=OcFHvio1-FcDEfgbKwhRmc=KhvdcnNAVg@mail.gmail.com>
Subject: Missing 2 blocks on my UBI partition
To: linux-mtd <linux-mtd@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_085500_542767_3F0E4ED4 
X-CRM114-Status: UNSURE (   5.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f32 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wpdster[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 FILL_THIS_FORM         Fill in a form with personal information
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

I'm curious to learn where 2 blocks went missing from my UBI NAND
device... can anybody help me out:

# ubinfo -a
UBI version:                    1
Count of UBI devices:           1
UBI control device major/minor: 10:57
Present UBI devices:            ubi0

ubi0
Volumes count:                           8
Logical eraseblock size:                 126976 bytes, 124.0 KiB
Total amount of logical eraseblocks:     1024 (130023424 bytes, 124.0 MiB)
Amount of available logical eraseblocks: 99 (12570624 bytes, 11.9 MiB)
Maximum count of volumes                 128
Count of bad physical eraseblocks:       0
Count of reserved physical eraseblocks:  20
Current maximum erase counter value:     33
Minimum input/output unit size:          2048 bytes
Character device major/minor:            252:0
Present volumes:                         0, 1, 2, 3, 4, 5, 6, 7

Volume ID:   0 (on ubi0)
Type:        static
Alignment:   1
Size:        127 LEBs (16125952 bytes, 15.3 MiB)
Data bytes:  16031744 bytes (15.2 MiB)
State:       OK
Name:        rootfs
Character device major/minor: 252:1
-----------------------------------
Volume ID:   1 (on ubi0)
Type:        dynamic
Alignment:   1
Size:        529 LEBs (67170304 bytes, 64.0 MiB)
State:       OK
Name:        persistent
Character device major/minor: 252:2
-----------------------------------
Volume ID:   2 (on ubi0)
Type:        static
Alignment:   1
Size:        30 LEBs (3809280 bytes, 3.6 MiB)
Data bytes:  3746638 bytes (3.5 MiB)
State:       OK
Name:        kernel
Character device major/minor: 252:3
-----------------------------------
Volume ID:   3 (on ubi0)
Type:        static
Alignment:   1
Size:        143 LEBs (18157568 bytes, 17.3 MiB)
Data bytes:  18145280 bytes (17.3 MiB)
State:       OK
Name:        old_rootfs
Character device major/minor: 252:4
-----------------------------------
Volume ID:   4 (on ubi0)
Type:        static
Alignment:   1
Size:        30 LEBs (3809280 bytes, 3.6 MiB)
Data bytes:  3745994 bytes (3.5 MiB)
State:       OK
Name:        old_kernel
Character device major/minor: 252:5
-----------------------------------
Volume ID:   5 (on ubi0)
Type:        static
Alignment:   1
Size:        38 LEBs (4825088 bytes, 4.6 MiB)
Data bytes:  4763648 bytes (4.5 MiB)
State:       OK
Name:        language
Character device major/minor: 252:6
-----------------------------------
Volume ID:   6 (on ubi0)
Type:        static
Alignment:   1
Size:        1 LEBs (126976 bytes, 124.0 KiB)
Data bytes:  65536 bytes (64.0 KiB)
State:       OK
Name:        crypto
Character device major/minor: 252:7
-----------------------------------
Volume ID:   7 (on ubi0)
Type:        static
Alignment:   1
Size:        1 LEBs (126976 bytes, 124.0 KiB)
Data bytes:  65536 bytes (64.0 KiB)
State:       OK
Name:        prev_crypto
Character device major/minor: 252:8

This shows that I have 8 UBI Volumes with sized as:
Size:        127 LEBs (16125952 bytes, 15.3 MiB)
Size:        529 LEBs (67170304 bytes, 64.0 MiB)
Size:        30 LEBs (3809280 bytes, 3.6 MiB)
Size:        143 LEBs (18157568 bytes, 17.3 MiB)
Size:        30 LEBs (3809280 bytes, 3.6 MiB)
Size:        38 LEBs (4825088 bytes, 4.6 MiB)
Size:        1 LEBs (126976 bytes, 124.0 KiB)
Size:        1 LEBs (126976 bytes, 124.0 KiB)
Total: 899 LEBs
There are 99 blocks free, 20 blocks reserved, and (according to the
documentation, 4 blocks of UBI management overhead

899+99+20+4=1022

But my NAND flash has 1024 blocks.  According to ubinfo, none of them
are marked as bad.

Where did the other 2 blocks go?

What am I missing?

--wpd

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
