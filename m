Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 435A510FBCF
	for <lists+linux-mtd@lfdr.de>; Tue,  3 Dec 2019 11:36:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=56Q0gM1PKekwA27jNqn9Xw5Bf0VI8hMIIxMyp8nVYzs=; b=hRzPooYI4VNeYV
	imvv+RyiZtfg2bDIRFkkPxJIycrVQKqDYb5K+KjLx+FRBuubRNTYAoilIeFSS9UdcJvV//ss0HSXD
	vQa+txqwxWux5MB6TNRmlP6sXNFa74RS5u9wozMejrqPQWd7rjVu+vqxREE9plP5caqDMWMHWC9uA
	ZYiDMF3pDknPf4dqamSAvrIvDZ0y1p16sLqIvKW591w2bdAVeR+2h5kuZOQsAmLN4bISp+8ykunZQ
	Pff7TiZpSA/ig7OhFkYLlXaliUCgDO0Il8jNjgb0dKI2bKxGQLXaKkl4vG6d589haztaieQVxbQOW
	ifDwnrI9UKGYln8ULjXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic5Xn-0008TQ-87; Tue, 03 Dec 2019 10:36:35 +0000
Received: from mail-ot1-x332.google.com ([2607:f8b0:4864:20::332])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic5Xe-0008Sf-FC
 for linux-mtd@lists.infradead.org; Tue, 03 Dec 2019 10:36:28 +0000
Received: by mail-ot1-x332.google.com with SMTP id r27so2440340otc.8
 for <linux-mtd@lists.infradead.org>; Tue, 03 Dec 2019 02:36:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Q+735gGCXevswzwfpCOFjVKAkug8qCPXCSRULo1Os3Q=;
 b=Pr0qDdPnz4S4yfoq52AnT57mX+qS0QeZyWD2gxwjt7NrHFoBtQzS2CI2ll8Kl0yO9s
 SF30Qb5YdOFOlD229QYAJ87qrdDRb3RSTIdjEFYQpJB6T/KEyFvI9RMiY8/Fdnqiqtya
 4JiA80hxlwCQbWTuyOxf4jvXlx55ODRZXhuJF6oYaDn28MwOPZtOjvNZcV4+D6COhWcO
 LZ8Nj6b9Ob7AUXaq66EbIoEQKv1CSmJEdampHp1TwoRbHi90SgrIomgxjMb5gexZNOBk
 Wj9EPWyCYnpMSYvg0XgzJsIhW1l0EpV16hZFWZb3grsZlPiuKPG5Mudp0dUexkT7v9yV
 edlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Q+735gGCXevswzwfpCOFjVKAkug8qCPXCSRULo1Os3Q=;
 b=RJY9TL/JPtLV10FYu0lkIZUpTR6jJyNQxgRgp6hbcJI51E9P45auqpn2B0PdeOuvK2
 61c+cYPKblB8RO5qj1zKFPcgCxeY5GchSIUQnzLj5DnRirVd1oGVHL1IeC8Sh5tX2nIg
 asf0WwdUrgMGxqDYgoxGCkCbraJr9Yvl1+oHAT05obeHqxS7tNEFjjyT6XZY4FOh84ZC
 rypK9Z+hoq30FM6exW7VfoF+GyWFKCV3oN4ilwPEqvmFHumWzes0fB7wKkpYJ3+ShF9S
 AOH0XKeGNBZpsfqDRr044L2p+DEn60mMV15UkujBVmqwspfgVIufv701T7OYb1SlULu1
 if8A==
X-Gm-Message-State: APjAAAW2yhGI9YM6cvV1ni9kUC7WKUavmKWTTjGOkBYF9tk1HeoHjCnN
 S0R3DE92I6WqTL8Btx3+at1KHNxvg9SipnE2VRs=
X-Google-Smtp-Source: APXvYqzfijOqRMtegdoAhWDeSV5H4prhPRTaSzKjuBLhYFIUydZxoXIrqGaHEoIA9kXwVT0n195Hm981fL0uV1x4dGA=
X-Received: by 2002:a9d:192f:: with SMTP id j47mr2765461ota.230.1575369384620; 
 Tue, 03 Dec 2019 02:36:24 -0800 (PST)
MIME-Version: 1.0
References: <MN2PR02MB5727000CBE70BAF31F60FEE4AF420@MN2PR02MB5727.namprd02.prod.outlook.com>
 <20191203084134.tgzir4mtekpm5xbs@pengutronix.de>
 <MN2PR02MB57272E3343CA62ADBA0F97E5AF420@MN2PR02MB5727.namprd02.prod.outlook.com>
 <614898763.105471.1575364223372.JavaMail.zimbra@nod.at>
In-Reply-To: <614898763.105471.1575364223372.JavaMail.zimbra@nod.at>
From: naga suresh kumar <nagasureshkumarrelli@gmail.com>
Date: Tue, 3 Dec 2019 16:06:12 +0530
Message-ID: <CALgLF9KPAk_AsecnTMmbdF5qbgqXe7HNOrNariNVbhSr6FVN2g@mail.gmail.com>
Subject: Re: ubifs mount failure
To: Richard Weinberger <richard@nod.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_023626_534371_B91AB2E6 
X-CRM114-Status: UNSURE (   6.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:332 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nagasureshkumarrelli[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sascha Hauer <s.hauer@pengutronix.de>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Michal Simek <michals@xilinx.com>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 siva durga paladugu <siva.durga.paladugu@xililnx.com>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgUmljaGFyZCwKCk9uIFR1ZSwgRGVjIDMsIDIwMTkgYXQgMjo0MCBQTSBSaWNoYXJkIFdlaW5i
ZXJnZXIgPHJpY2hhcmRAbm9kLmF0PiB3cm90ZToKPgo+IC0tLS0tIFVyc3Byw7xuZ2xpY2hlIE1h
aWwgLS0tLS0KPiA+IFZvbjogIk5hZ2EgU3VyZXNoa3VtYXIgUmVsbGkiIDxuYWdhc3VyZUB4aWxp
bnguY29tPgo+ID4gaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjUuNC9zb3VyY2Uv
ZnMvdWJpZnMvc2IuYyNMMTY0Cj4gPiB3ZSBhcmUgdHJ5aW5nIHRvIGFsbG9jYXRlIDQzMjUzNzYg
KH40TUIpCj4KPiA0TWlCPyBJcyAtPm1pbl9pb19zaXplIHRoYXQgbGFyZ2U/CmlmIHlvdSBzZWUg
aHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvbGF0ZXN0L3NvdXJjZS9mcy91Ymlmcy9z
Yi5jI0wxNjQKVGhlIHNpemUgaXMgYWN0dWFsbHkgQUxJR04odG1wLCBjLT5taW5faW9fc2l6ZSku
CkhlcmUgdG1wIGlzIG9mIDQzMjUzNzYgQnl0ZXMgYW5kIG1pbl9pb19zaXplIGlzIDE2Mzg0IEJ5
dGVzCgpUaGFua3MsCk5hZ2EgU3VyZXNoa3VtYXIgUmVsbGkKPgo+IFRoYW5rcywKPiAvL3JpY2hh
cmQKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+IExpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdAo+IGh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNz
aW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LW10ZC8K
