Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C8EF63FA4
	for <lists+linux-mtd@lfdr.de>; Wed, 10 Jul 2019 05:32:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=MioLp/TkwiEWEh8qo3tFt0HZJ6hnrjzbpI9QYTb4bwE=; b=f4h
	SwMO/4n36qEEJ2GhmL0TWDLhaYAwK02SDtildSpfJ/l/Mpcp204Hj/oOxP4L2NmqWtTAek1RkRwfc
	jyXJUjr98ERV7KXPhURzHNQQTDoyFyi4+QkJKO/LNECOWQrPYKTq64z+rS5JiWLxLyhJe3Axwvjil
	4H2WVMK8/9bdDWaoAfD+YG3rKGjA15JAFZtFquQxlM6mgTVH+sBZa6Ej0P2PcOf9kjKD1uzb1Kl4n
	uJE41KwQG3ywA+dm6g5uZ8GYxOTNm719b0K1/GQ4Gzumg+2xQLSwB5KTDjEnsYeoTMCS7x2shY4FM
	sllBrSpJKFg2sP1g/5PLtY+c6lutj6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl3LR-0003qq-8T; Wed, 10 Jul 2019 03:32:37 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl3LI-0003qX-Rb
 for linux-mtd@lists.infradead.org; Wed, 10 Jul 2019 03:32:30 +0000
Received: by mail-lf1-x12c.google.com with SMTP id u10so482996lfm.12
 for <linux-mtd@lists.infradead.org>; Tue, 09 Jul 2019 20:32:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=DRlWVqn8SBfvLlMEqIX4Crlr5eB7T4SWNSW6LFhdDBY=;
 b=G0X4I4MbeYi8d+q/gFeGJ8wpvnycSLoo68PSX5XJFVaJZVSbFD+JPIBOxQxDWqW5gX
 8GwKh/J2ZUvCb//yL5D1OEl11yGPlIghYN9BwE+QcxBdFmXajgJx/38REZVy5dNyXwQ4
 dpLF8Dx3RI4/iD+3pNWYGDgrF+wBL3wyCB3VKgy5IoJydDjJSiGRR5FOHOw/48Avlj5P
 UcLNjmeariJUZoj8/iafjZozWaJfAW//8lDDj0ktBwhKR5roemheI/SV7IscnhdoHZs0
 kfNN6s31710HKPwLF2iByYspIGPFJKEPE53vBdXd+W2hnvdoeJZjL5R8bEzOmlK03Ol2
 dw1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=DRlWVqn8SBfvLlMEqIX4Crlr5eB7T4SWNSW6LFhdDBY=;
 b=IqLBdDxlO5FJsVMWs+xHdWrp1O2MssF2C0wQ278ADDTpuCTQ0cEyN1oE9v54gMN1E5
 gNSgELTqRegzZ1vat344aF88zSh0ZoGe8AUkm24Q1tdN8LKm5TDHzdEQTbmJPPptjJOv
 YGklC0iLcZ7sirxxnI0XbWIFIXAMqlgAsHQvpNK1K1VF7c3uEV1H4j6QqLqrDv+reixY
 6Ql++wk99CJLA3KbPFgHPdVoixtXTV9He/qUj5Edw8Qj2bB5jPme71YVPN52X0JjXpmd
 NCJ3pFZoCXNd7FFlg+U7MkNAhvn3dUBMnW5J6Ha+KV+y20IS3YngjQsPN09fUWfpwLZy
 5aIg==
X-Gm-Message-State: APjAAAWwGnTIDsFbwuO5JK0FVJhJFxi3kgISqKtQEYSjPque9VqVWqau
 Te0D8OtOqFHlnp9EjhC1IkJMsiEJoKlU4hv44UGLcsTV
X-Google-Smtp-Source: APXvYqx1CvwNaEHWQr6AKOwd1N27Mt2G60ui9/pqA7jT/y2+4ZeYUjDw+58thZKhHIqhXluXhf6nSbZkPyq4u+v8huE=
X-Received: by 2002:ac2:551e:: with SMTP id j30mr3482260lfk.155.1562729546996; 
 Tue, 09 Jul 2019 20:32:26 -0700 (PDT)
MIME-Version: 1.0
From: Ben Schroeder <klowd92@gmail.com>
Date: Wed, 10 Jul 2019 06:32:16 +0300
Message-ID: <CAMk-x8NpDDjqtJQ0WqqRcggQxBp3uu7QbQET0m019LoG9OSkvA@mail.gmail.com>
Subject: Available space loss due to fragmentation?
To: linux-mtd@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_203228_920759_BA66203B 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:12c listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (klowd92[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (klowd92[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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

Hi everyone,
I have an issue of loss of available space after file rewriting -

Setup:
3 UBI Volumes (25mb static, 25mb static, 15mb dynamic) on a single MTD device.
A/B partition scheme for upgrades with the 25mb volumes.
A/B partitions have around 400kb space available each, and cannot
expand beyond it.

Issue:
Partition 'A' is main RootFs, 'B' partition mounted on /mnt/ to be upgraded.
When attempting to upgrade the backup partition, by rewriting the files
according to a binary diff, I run out of available space on the volume.

The issue can be simplified:
Copying a 2mb file out of the partition, and then back to overwrite the original
may cause loss of 100kb of space.
Rewriting files with minor changes, even if the new file is smaller than the
original, can result in loss of available disk space.

I base this not only on the info from: df -h
But also run sync, unmount and mount again, and reboot.
All show a loss of available space.
I am aware that df -h does not show an accurate value, however, copying
and modifying files will fail due to no available disk space error!

Some writes will continue to succeed even when available space is 4kb.
But many writes will fail when available space is low.

I am working on a new format of a UBIFS image.
I suspect that the original UBI volume files are alligned perfectly,
and once I rewrite files wit binary diffs, the files become fragmented,
and a loss of available space occurs, even though the files remain the
same or smaller.

However, I am not familiar enough with the UBI internals to be certain.

Why do I see a loss of space when rewriting the same file?
Can I use an upgrade scheme with file binary diff as mentioned above -
One that would run correctly with low available space?
Can I use an upgrade scheme with UBI volume binary diff?

Sorry for the long mail, I have not found much information about fragmentation
and space loss in UBIFS. Let me know if I forgot any relevant details.

Thanks in advance.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
