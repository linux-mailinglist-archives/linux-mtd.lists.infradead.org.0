Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7003F161E59
	for <lists+linux-mtd@lfdr.de>; Tue, 18 Feb 2020 02:00:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CPQAqUp26n/k6XbBznGpp9+X+fz4h3H9uzBOOQJi8Og=; b=BM+G8bvZT2jJtR
	JQV9duSDopVDTu/KKQdhpBxMIWp92dic6AA+uJieU/SuyNy1xpD14ZTIRwXiSzvFzzdwwjDOAEmYE
	OhNM7ZqqQxHRO5m0hc6m7AesvZvrHFRmuy846bk/8YK6/TYaFzVhrtbTxH0hHIqNKksaD63m3kM6Q
	rwcuFzXEFE9Vuuri3EjUncQpLx7tDMpiYUunfnCgLo+DEfiIg/jn8JHW00hf3XCmyxu6/h166+IRb
	YuL+iEZyHoaUJHiBVTC8UpT3oa6InTKeZ0UKoKlqGSL3e4H2qANFS10DiePPNwjxXSleTNzhZRIon
	y0uHLtRb5rv4OM8t6jiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3rFa-0000Cg-12; Tue, 18 Feb 2020 01:00:34 +0000
Received: from mail-il1-x130.google.com ([2607:f8b0:4864:20::130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3rFV-00006A-GS
 for linux-mtd@lists.infradead.org; Tue, 18 Feb 2020 01:00:30 +0000
Received: by mail-il1-x130.google.com with SMTP id f70so15824099ill.6
 for <linux-mtd@lists.infradead.org>; Mon, 17 Feb 2020 17:00:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=EW0Fnf3YXcKqFSs9Rd2Yv4JlQlGtDQ8qmQpioAEqqNQ=;
 b=o8xISoHVFvsGKN7hdqImys+64pMBHCeQ1CASu2QFHTAqtO9RLOzdvjhEH/xFa1OwT7
 zrXmmTDF+Hiks2bCzV9SEdQU3f/fn592SPj3Di3IzTNTWYr6brACj+mEyNHvncm9ikz1
 tPzlPBk5NTtX5UIpJ/dl9H1NcJyBJF9N0CgrgKToej+YJnH7bxd7QqCxQtuCy1j/XJo6
 y4t/RSSR7krC5GSDjcTpbRvZBeYWeAf2WTg9Yesbw3CEwhaYRv9XpUm4nttrQjYFDl8A
 4VC3ZPWLfnBNb7PNvgkBIRTk3UuAqt1iPkOSP4sgU3BL0xpaXJaIK+G5CPG0GRkWvFJE
 bpQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=EW0Fnf3YXcKqFSs9Rd2Yv4JlQlGtDQ8qmQpioAEqqNQ=;
 b=j+FYhdZzn7lJZr3H/UPm2OixuHFLR9Z+nPpVKpuXtOan79h5F7GP7iH0s6oaMyZhVH
 qEabl/wQiuegs2lWLfK1XuNrDVUQhLblQL+8182N37uXKGqjE0En+4Fk33Ik0khwy4on
 N1h//fys+P1Tx/umndESjAoQZuFKQ/ErNE3ZvY2T4pP6h0I1b4PskWjZj00XIx39e3Og
 cxIL7vgWF+zdJ+gP3STMAbUID0Jw0shy0GC9/TVn59ecCs/NVELgJvfyoP1zrnX843rQ
 xlNTy3KUiDi9uOuMXEgTNLlM1oIYZgBuKq0/8QonjXx0BrjsC6YMbHdwHPYE8shrpwyB
 bDjw==
X-Gm-Message-State: APjAAAWcMUwtP2XeH2XsIO6tSBMC7tvgRmEZxERdM8XDxK369i68QJAR
 ZKGF+3wY1om8V58w+xKdbF0kU/Hj8t7u56D10Kdw3ql6
X-Google-Smtp-Source: APXvYqxqBP5yqr87WaOZEro0sPSkzN9aQ6pTx8HGV4BQdS10MoRw74Wew2HcyTITvRBanvaJvt+snKpR0VRYIT1T2h4=
X-Received: by 2002:a92:216:: with SMTP id 22mr16818493ilc.53.1581987626912;
 Mon, 17 Feb 2020 17:00:26 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad5:5d0d:0:0:0:0:0 with HTTP; Mon, 17 Feb 2020 17:00:26
 -0800 (PST)
From: JH <jupiter.hce@gmail.com>
Date: Tue, 18 Feb 2020 12:00:26 +1100
Message-ID: <CAA=hcWTDqhJEE7MXFY9rvN93nf8=nWvshLoXKF3EMXYGLmZGbA@mail.gmail.com>
Subject: Change RO rootfs failed RF Kill Switch Status and Failed to start Run
 pending postinsts
To: linux-wireless <linux-wireless@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_170029_551466_0AF0EA36 
X-CRM114-Status: UNSURE (   6.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:130 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jupiter.hce[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Yocto discussion list <yocto@yoctoproject.org>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 Patches and discussions about the oe-core layer
 <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi,

Apologize for the cross posting.

I am running kernel 4.19.75 on iMX6 customized device with WiFi and 4G
LTE, it was running well in an RW rootfs. After I have just changed
rootfs to RO UBIFS partition, it failed RF Kill and postinsts I
suspect both try write to the RO and failed, any advice how to fix it?
Despite it failed RF Kill and postinsts, it was still working.

[    6.097762] UBIFS (ubi0:2): UBIFS: mounted UBI device 0, volume 2,
name "rootfs-volume", R/O mode
..............
[    6.151932] VFS: Mounted root (ubifs filesystem) readonly on device 0:13.
.................
[  OK  ] Listening on Load/Save RF Kill Switch Status /dev/rfkill Watch.
         Starting Load/Save RF Kill Switch Status...
[FAILED] Failed to start Load/Save RF Kill Switch Status.
See 'systemctl status systemd-rfkill.service' for details.

[FAILED] Failed to start Run pending postinsts.
See 'systemctl status run-postinsts.service' for details.
...............
root#

Thank you.

Kind regards,

- jh

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
