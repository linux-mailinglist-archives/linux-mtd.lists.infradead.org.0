Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D71217D0
	for <lists+linux-mtd@lfdr.de>; Fri, 17 May 2019 13:37:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=/NSh035bRWh6/0aF+cPOnwDOP8wEa49yPjXQ9X3bGsk=; b=Ai0
	N4hkAnEzJbCK81YyK4Ff8v6UcBNlrW4Q9ut9z0snK5MQMMtozGjSIqjhZKhudgWswJxgLTbmIZx1/
	ZpXqyb+JCVDieOeG/wG4MPi1hAofCHdw3C3MBOv6wviwF6EvLJhCwQ48Pd3FSGMtDWRndSaWGG45f
	/65VO+GgeXkdpxo+fkGraKTI/8WZ4zY2CQ0pj/FGgM1Xar+8dVAYfwYICIGuhQ4tB2na2TdeaYfVo
	1e11NBmZPLrC4wsn/NQhj+CFyS+dHw6RoX0EpH4XFW8/AydMReoIL4MTYRLlIVYfdtJ9yZuUl7wfe
	kmAOkzxeaoRXEmpQO2FR88LQQrUF9Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRbAc-0005YH-Ri; Fri, 17 May 2019 11:37:02 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRbAV-0005Xh-Qb
 for linux-mtd@lists.infradead.org; Fri, 17 May 2019 11:36:56 +0000
Received: by mail-lf1-x130.google.com with SMTP id u27so5070416lfg.10
 for <linux-mtd@lists.infradead.org>; Fri, 17 May 2019 04:36:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=cq+/yNQZUNqGYLWGKHPNe5xT+ccWYiApg5fBm39X59k=;
 b=Pr2tebjjoAG3RS8Ju2gVttTBfAotrUmxL8sB317alSe0KSi4Ei68OYZjJFouyEUr9x
 kWUgwUtcJR7+By7v8wQPzymxbEt8MAcmgOTwfJSYo+m7xB6VHNTg3E1cTXVswA7NQfgb
 OD29nkJkwP1JIDY08h/U8pc/JmAmdcmXxOaqn3uUpoILHN3v/KBA1YzfmfhbY3jMG/ve
 STpwaf1kc+BiT1oiYax3FsxejVWqoMEmbhHNkgTdUCbq+tpIbayNlfCmBFN+RHoEs6gD
 aRr9dtoGvi7EcNVuG5u+wxLMCFgiJYIe9PaQJ3H7gA6yrjpb5JgPKwJXLmzG39VaPW5Q
 QIFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=cq+/yNQZUNqGYLWGKHPNe5xT+ccWYiApg5fBm39X59k=;
 b=TD/C/ZdmnZ0bjqn/VA5J+jhxkljQf27njLRJz15kJ7lVwqkkQ2K1tHA15Lbqy5YFoi
 GeAqoHUHOyNQaIt6EKojAEzV3z+O6nShmUAAVOCB106nHT4fjnT16Ur1m9c7Y3YHIKui
 yrcS5TyiXoj8nE8t0N/lUqhs8yNum0ZwM0bYiDhdYYbg4W31IoXcnGH64oiRb1PIaIPr
 qNSgssgAOiWwju2vwsbbqnr522VgOOJFDIIvwTBK3QarXvNDsH6iWyp/T1ZD2N0kPbvo
 OmNtlprd6nrWJY3cnfAbd04qZSuomvtB2YxOzAPzy8KzjRujexQmJm3yaMGvG1lf5wVr
 Eayw==
X-Gm-Message-State: APjAAAVMU5knXv6GV8ZLkRLcCSaZxSXEWBkpJJi9edyem6puzQD8Neqd
 KheJiNfl5fe4sYA6gzqUfGtBkXunSeCtyCoOkwM+t9Bftlo=
X-Google-Smtp-Source: APXvYqyhd9AoHO5Zf++6UMgCGw2LQ6kyEIwLehd8vvGx8v0AMw7VXnia/XqEVMs2fX2zvL8P8Wz9XM5WIv4/RQ0xXNs=
X-Received: by 2002:a19:4a04:: with SMTP id x4mr26726222lfa.124.1558093013218; 
 Fri, 17 May 2019 04:36:53 -0700 (PDT)
MIME-Version: 1.0
From: Shibin George <george.shibin1993@gmail.com>
Date: Fri, 17 May 2019 17:06:41 +0530
Message-ID: <CAGu8XfRM6MtAP7v2F2jp9CGYERj5niAvhHYtXQmpzOS0uHoUrg@mail.gmail.com>
Subject: File-compression on ubifs
To: linux-mtd@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_043655_864446_480DEB7C 
X-CRM114-Status: UNSURE (   6.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:130 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (george.shibin1993[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (george.shibin1993[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
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

Had a query regarding mkfs.ubifs tool. I created an empty ubifs
filesystem using:

mkfs.ubifs -y /dev/ubiX_Y

I was wondering that if I now create a new file on this filesystem
(after mount()), would compression be enabled or disabled for that
file by-default? I am sorry but I could quite grasp this from the
mkfs.ubifs code.

Another query that I have is this:
Would ubifs do a better job at compression if it knows the root-dir
contents ahead of time? In other words, is on-the-fly compression of a
file (i.e. compression at the time of creating/writing to a file)
generally worse than when the same file is known to ubifs at the time
of image creation?

Thanks for your time!

Regards,
Shibin George

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
