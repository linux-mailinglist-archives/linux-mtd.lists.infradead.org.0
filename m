Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5691101A7E
	for <lists+linux-mtd@lfdr.de>; Tue, 19 Nov 2019 08:49:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=dcunnRwlPD0G9gSAJUZVKa7gHmxBa00M3/jJm/zY5RE=; b=eUN
	h3wLWxvxkk1zzp7qnUJ22wwdqSTaEwXhRbjt/fm6Wh+uxT3J6b0qov1Xeu/32CVOqRcKaSpJP1fwC
	buM7cyo6ih0xJGGCw5/qAr1oDg6dcBJD+iwpUOQW38HV8/8JcN/8OixaKUscDro23Y+eBiMhX9wQQ
	SL/N1FGdds8veZzI5BMsdLGckRfWf3G3F0Emg+YMGqQIiz2+VcrlvFHOqXHFNZBDQOQmbCST9CkVw
	nn513O4eEb8L5ynmCZvAJHzjzNIW88+6L0psdby0wg1fKxpQmpsRsIrawWoEaVF4pMnoMuqWs1nHR
	jMKf8Y3xkfq6g4yK/8vB/o5tfN7NQMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWyGO-0004ev-Ho; Tue, 19 Nov 2019 07:49:28 +0000
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWyGH-0004eQ-B3
 for linux-mtd@lists.infradead.org; Tue, 19 Nov 2019 07:49:25 +0000
Received: by mail-pj1-x102a.google.com with SMTP id gc1so2350236pjb.8
 for <linux-mtd@lists.infradead.org>; Mon, 18 Nov 2019 23:49:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=96yvLEjdL0C7XljTbIsH47hU/KE36GucYLHDI/6doCk=;
 b=QW7IlpmjfS7Z7Tfq3WqHSDk2/mCpOnZ5X/7pMGYwOM74l+1zaJwAUhJTYMlLncMS4r
 btgymTesr5p2oiEiMs6c9UmRXJH82HZrJopHj1gz++kpfwgrQGG0nb+G0QUkTzq5i/Hx
 1wLmKJXgvgZTCELNvvGPYO1tS1ugy6GMoyG5q5V1Y/vOUNZndy64S0w1hx83JbKOG/zZ
 RWeS6jAyYe3PSrt0j/EYZqabcomTvpWGYVl9mEPGHwru/kYOx28a9Sr7lkRypVOpv6Ay
 d1d9TODVc+LDjOUp7lfF/YrP8/viD+z5DyEaOW+ibjjXI65aNdaRRSgSwBCeUnzlWRJj
 28mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=96yvLEjdL0C7XljTbIsH47hU/KE36GucYLHDI/6doCk=;
 b=TocnaI3PSfjELFJ6P9gkZ622NpfsIlvVtwyanRfgxEMTDdMZDywLNLONoDyCaH7teM
 vLjR6LD+T/FSljGW94l817/OJMdR4WyWhe0q3nwpIKbIALVzPO76G1dmSkA2bM7YZJXK
 bwLjBfDYp0eJxCt39FC7M1KM1kvWZ8CoGacocH6L0F1RwfFnbEQQTPCRrg7y0ledk0j6
 0s6ogO/MW58UilB6BOps7V+XK/q3YgdZuxrVw3LKbwQ8T8Exfm28BjWgs/BAKWrC9MwK
 m/QgxypyWpHHyOGLGj0iIAu6GGv1zi/0PWonOA793sVh8tm4MuLiEbF58JI68cs5q2Xd
 fOcw==
X-Gm-Message-State: APjAAAXS24/jc8FeWx27l9Z5yIm/SQzhFRiwowhR+myxvlkRlf/biNwO
 DA6z+iw43nFXAL3U3s4z3u70mvmvu+smTj3rZuFokEZS/Ls=
X-Google-Smtp-Source: APXvYqxaQpOziN4JwGC2LGp4YxgM1IeVR6TAHzsKm1Lr4gbS45yAY6KzKxkknE8JCisn0zoke02L03fhW3crk8OLDpc=
X-Received: by 2002:a17:902:740c:: with SMTP id
 g12mr32658641pll.140.1574149758923; 
 Mon, 18 Nov 2019 23:49:18 -0800 (PST)
MIME-Version: 1.0
From: barak adam <barak1adam@gmail.com>
Date: Tue, 19 Nov 2019 09:49:07 +0200
Message-ID: <CAAme7onDzOS25Dq8yw+oPQcZQ2qvtAfizgWnaZ0xqfEuZp9dFA@mail.gmail.com>
Subject: mtd: nand: add erased-page bitflip correction
To: linux-mtd@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_234921_380088_1ED595FD 
X-CRM114-Status: UNSURE (   6.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (barak1adam[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Hi All,

I am interested in a patch for our system for this issue:
==========================================
Our UBIFS background thread stops due to corruptions detected in empty
space during ubifs_scan or in master node recovery functions. It ends
with a fatal failure for our system because a key partition fails to
mount upon system startup.
It happens rarely, but it's critical.

I guess it is related to power cuts and I did read carefully all
relevant messages in the following thread, handling this issue:
http://lists.infradead.org/pipermail/linux-mtd/2014-March/052507.html

I'd like to use such a patch, but my question is:
====================================
If I do like to patch our mtd layer, is this given patch
(nand_verify_erased_page) still recommended?
If yes, what is the latest and most reliable version of this patch?

Some relevant info about our system:
============================
We develop modern industrial 10G Ethernet switches based on Marvell
SoCs, with a 8GB NAND Flash Memory of Micron, model MT29F8G08ABACA.
We are running legacy Linux Kernel 3.10 with UBIFS as our file system,
using a kernel nand driver provided my Marvell under
drivers/mtd/nand/mvebu_nfc.

Thanks,
Barak
Linux Team Leader
Adva Optical Networking

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
